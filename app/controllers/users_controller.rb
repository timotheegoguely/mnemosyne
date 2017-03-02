class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update ]
  skip_before_action :authenticate_user!, only: [ :show, :new, :create, :update ]
  layout "basic"

  def show
    @theses = @user.theses
  end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :bio, :birthdate, :website, :school)
  end

end
