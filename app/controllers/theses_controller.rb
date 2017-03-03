require 'open-uri'
class ThesesController < ApplicationController
  before_action :set_thesis, only: [ :show, :edit, :update, :destroy, :bookmark, :pdf ]
  skip_before_action :authenticate_user!, only: [ :search, :index, :show, :new, :create ]
  before_action :get_search_params, only: [ :search ]

  layout "basic", only: [ :new, :show, :edit, :update ]

  def search
    @results = Thesis.search @keywords, misspellings: {edit_distance: 2}
    authorize @results
    @schools = School.all
    @school_cities = School.order("name").group_by(&:city)
    @diplomas = Diploma.all
    theses = policy_scope(Thesis).order(created_at: :asc)
    @theses_per_category = []
    @results.each do |thesis|
      @theses_per_category << thesis.categories_names
    end
  end

  def index
    @theses = policy_scope(Thesis).order(created_at: :asc)
    @schools = School.all
    @school_cities = School.order("name").group_by(&:city)
    @diplomas = Diploma.all
    @categories = Category.all
    @theses_per_category = []
    @theses.each do |thesis|
      @theses_per_category << thesis.categories_names
    end
  end

  def show
    @pdf = @thesis.pdf
  end

  def new
    @thesis = Thesis.new
    authorize @thesis
  end

  def create

    if params[:file]
      @thesis = Thesis.new
      authorize @thesis
      file = Cloudinary::Uploader.upload(params[:file])

      # Récupérer l'url pour la preview + d'autres infos avec le parser de PDF
      io     = open(file['url'])
      reader = PDF::Reader.new(io)

      infos = reader.info.reduce({}) do |infos, (key, value)|
        cleaned_value = value

        begin
          value.to_json # try to convert to json
        rescue JSON::GeneratorError # on illegal/malformed utf-8 error
          cleaned_value = value.force_encoding("ISO-8859-1").encode("utf-8") # convert from ISO to UTF-8
        end

        infos[key] = cleaned_value
        infos
      end

      # subject is not correctly encoded by PDF::Reader info method so we extract it from metadata \o/
      infos[:Subject] = reader.metadata.match(/<dc:description>(.*)<\/dc:description>/m)[1].match(/<rdf:li.*>(.*)<\/rdf:li>/m)[1]

      # Construire le JSON de retour
      @json = { file: file, infos: infos }
      return render json: @json
    end

    @title = params[:thesis][:title]
    session[:thesis_title] = @title

    @subtitle = params[:thesis][:subtitle]
    session[:thesis_subtitle] = @subtitle

    session[:thesis_school_id] = params[:thesis][:school_id]

    @diploma = Diploma.find(params[:thesis][:thesis_diploma])
    session[:thesis_diploma_id] = params[:thesis][:thesis_diploma]

    @year = params[:thesis]['year(1i)'].to_i
    date = Date.new(@year)
    session[:thesis_year] = date

    @subcategories = params[:thesis][:subcategories]
    session[:thesis_subcategories] = @subcategories

    @resume = params[:thesis][:resume]
    session[:thesis_resume] = @resume

    @tags = params[:thesis][:tag_list]
    session[:thesis_tags] = @tags

    @thesis = Thesis.new(thesis_params)
    @thesis.diploma = @diploma

    if current_user
      @thesis.user = current_user
      @thesis.save
      redirect_to theses_path
    else
      redirect_to new_user_session_path
    end
    authorize @thesis
  end

  def edit
    if params[:file]
      @thesis = Thesis.find(params[:id])
      authorize @thesis
      file = Cloudinary::Uploader.upload(params[:file])

      # Récupérer l'url pour la preview + d'autres infos avec le parser de PDF
      io     = open(file['url'])
      reader = PDF::Reader.new(io)

      infos = reader.info.reduce({}) do |infos, (key, value)|
        cleaned_value = value

        begin
          value.to_json # try to convert to json
        rescue JSON::GeneratorError # on illegal/malformed utf-8 error
          cleaned_value = value.force_encoding("ISO-8859-1").encode("utf-8") # convert from ISO to UTF-8
        end

        infos[key] = cleaned_value
        infos
      end

      # subject is not correctly encoded by PDF::Reader info method so we extract it from metadata \o/
      infos[:Subject] = reader.metadata.match(/<dc:description>(.*)<\/dc:description>/m)[1].match(/<rdf:li.*>(.*)<\/rdf:li>/m)[1]

      # Construire le JSON de retour
      @json = { file: file, infos: infos }
      return render json: @json
    end
  end

  def update
    @thesis.update(thesis_params)
    redirect_to user_thesis_path(@thesis)
  end

  def destroy
    @thesis.destroy
    redirect_to theses_path
  end

  def bookmark
    if current_user.voted_for? @thesis
      current_user.unvote_for @thesis
      respond_to do |format|
        format.html { redirect_to user_thesis(@thesis) }
        format.js  # <-- will render `app/views/theses/bookmark.js.erb`
      end
    else
      current_user.up_votes @thesis
      respond_to do |format|
        format.html { redirect_to user_thesis(@thesis) }
        format.js  # <-- will render `app/views/theses/bookmark.js.erb`
      end
    end
  end

  private

  def get_search_params
    Thesis.reindex
    @keywords = params["keywords"]
  end

  def set_thesis
    @thesis = Thesis.find(params[:id])
    authorize @thesis
  end

  def thesis_params
    params.require(:thesis).permit(:title, :subtitle, :year, :school_id, :resume, :license, :link, :document, :document_cache, :tag_list, :download)
  end

end
