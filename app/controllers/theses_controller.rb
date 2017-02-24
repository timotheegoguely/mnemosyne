class ThesesController < ApplicationController
  before_action :set_thesis, only: [ :show, :edit, :destroy, :bookmark ]
  skip_before_action :authenticate_user!, only: [ :search, :index, :show, :new, :create ]
  before_action :get_search_params, only: [ :search ]

  layout "basic", only: [ :new, :show, :edit, :update ]

  def search
    @results = Thesis.search @keywords, misspellings: {below: 5}
    authorize @results
  end

  def index
    @theses = policy_scope(Thesis).order(created_at: :desc)
  end

  def show
  end

  def new
    @thesis = Thesis.new
    authorize @thesis
  end

  def create
    @title = params[:thesis][:title]
    session[:thesis_title] = @title

    @subtitle = params[:thesis][:subtitle]
    session[:thesis_subtitle] = @subtitle

    session[:thesis_school_id] = params[:thesis][:school_id]

    @thesis_diploma = ThesisDiploma.find(params[:thesis][:thesis_diploma])
    session[:thesis_diploma_id] = params[:thesis][:thesis_diploma_id]

    @year = params[:thesis]['year(1i)'].to_i
    date = Date.new(@year)
    session[:thesis_year] = date

    @subcategories = params[:thesis][:subcategories]
    session[:thesis_subcategories] = @subcategories

    @resume = params[:thesis][:resume]
    session[:thesis_resume] = @resume

    @thesis = Thesis.new(theses_params)
    @thesis.thesis_diploma = @thesis_diploma

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
  end

  def update
    @thesis = thesis.find(params[:id])
    @thesis.update(thesis_params)
    redirect_to theses_path(@thesis)
  end

  def destroy
    @thesis = Thesis.find(params[:id])
    @thesis.destroy
    redirect_to theses_path(@thesis)
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

  def theses_params
    params.require(:thesis).permit(:title, :subtitle, :year, :school_id, :resume, :license, :link, :document, :document_cache)
  end

end
