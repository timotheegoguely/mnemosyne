class Api::V1::ThesesController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, only: [ :update, :create, :destroy ]
  before_action :set_thesis, only: [ :show, :update, :destroy ]

  def index
    @theses = policy_scope(Thesis)
  end

  def show
  end

  def update
    if @thesis.update(thesis_params)
      render :show
    else
      render_error
    end
  end

  def create
    @thesis = Thesis.new(thesis_params)
    @thesis.user = current_user
    authorize @thesis
    if @thesis.save
      render :show, status: :created
    else
      render_error
    end
  end

  def destroy
    @thesis.destroy
    head :no_content
    # No need to create a `destroy.json.jbuilder` view
  end

  private

  def set_thesis
    @thesis = Thesis.find(params[:id])
    authorize @thesis  # For Pundit
  end

  def thesis_params
    params.require(:thesis).permit(:title, :subtitle, :user, :school, :category, :subcategories, :resume, :license, :link )
  end

  def render_error
    render json: { errors: @thesis.errors.full_messages },
      status: :unprocessable_entity
  end
end
