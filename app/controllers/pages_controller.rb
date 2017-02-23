class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  layout "basic", only: [ :home ]

  def home
  end
end
