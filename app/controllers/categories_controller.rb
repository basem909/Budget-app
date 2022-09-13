class CategoriesController < ApplicationController
  def index
    @user = current_user
    @categories = Group.where(user_id: @user.id)
  end
end
