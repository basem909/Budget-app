class SplashController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    redirect_to user_categories_path(current_user) if current_user
  end
end
