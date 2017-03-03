class UsersController < ApplicationController
  before_action :set_user, only: [ :show ]
  skip_before_action :authenticate_user!, only: [ :show ]
  layout "basic"

  def show
    @theses = @user.theses
  end

  def edit
    @user = current_user
    authorize @user
  end

  def update
    @user = current_user
    authorize @user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
    authorize @user
  end

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :bio, :birthdate, :website)
  end

end
