class ThesesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @theses = policy_scope(Thesis).order(created_at: :desc)
  end
end
