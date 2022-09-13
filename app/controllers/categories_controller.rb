class CategoriesController < ApplicationController
  def index
    @categories = Group.all
    @user = current_user
  end
end
