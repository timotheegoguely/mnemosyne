class ThesesController < ApplicationController
  before_action :set_thesis, only: [ :show, :bookmark ]
  before_action :get_search_params, only: [ :search ]
  skip_before_action :authenticate_user!, only: [ :search, :index, :show, :new, :create ]
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

    @school = School.find(params[:thesis][:school])
    session[:thesis_school_id] = params[:thesis][:school]

    # @thesis_diploma = ThesisDiploma.find(params[:thesis][:thesis_diploma])
    session[:thesis_diploma_id] = params[:thesis][:thesis_diploma]

    @year = params[:thesis]['year(1i)'].to_i
    date = Date.new(@year)
    session[:thesis_year] = date
    @thesis = Thesis.new(title: @title, subtitle: @subtitle, year: date, thesis_diploma: @thesis_diploma, school: @school )
    if current_user
      @thesis.user = current_user
      @thesis.save
      redirect_to theses_path
    else
      redirect_to new_user_session_path
    end
    authorize @thesis
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
    params.require(:thesis).permit(:title, :year, :school, :diploma, :document)
  end

end
