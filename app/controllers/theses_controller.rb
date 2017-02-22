class ThesesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index
    @theses = policy_scope(Thesis).order(created_at: :desc)
  end

  def show
    @thesis = Thesis.find(params[:id])
    authorize @thesis
  end

  def new
    @thesis = Thesis.new
    authorize @thesis
  end

  def create
    @school = School.find(params[:thesis][:school])
    @diploma =Diploma.find(params[:thesis][:diploma])
    @title = params[:thesis][:title]
    @year = params[:thesis]['year(1i)'].to_i
    date = Date.new(@year)
    @thesis = current_user.thesis.new(title: @title, year: date, diploma: @diploma, school: @school )
    authorize @thesis

    @thesis.save
    redirect_to theses_path
  end

  private

  def theses_params
    params.require(:thesis).permit(:title, :year, :school, :diploma, :document)
  end

end
