class ThesesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:new, :create]
  def index
    @theses = policy_scope(Thesis).order(created_at: :desc)
  end
  def new
    @theses = Thesis.new
    authorize @theses
  end

  def create
    @school = School.find(params[:thesis][:school])
    @diploma =Diploma.find(params[:thesis][:diploma])
    @title = params[:thesis][:title]
    @year = params[:thesis]['year(1i)'].to_i
    date = Date.new(@year)
    @theses = current_user.theses.new(title: @title, year: date, diploma: @diploma, school: @school )
    authorize @theses

    @theses.save
    redirect_to theses_path

  end


  private

  def theses_params
    params.require(:thesis).permit(:title, :year, :school, :diploma, :document)
  end

end
