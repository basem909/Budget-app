class CategoriesController < ApplicationController
  def index
    @user = current_user
    @categories = Group.where(user_id: @user.id)
  end

  def new
    @category = Group.new
    @user = current_user
  end

  def create
    @category = Group.new(category_params)
    @category.user_id = current_user.id
    @category.save
    redirect_to user_categories_path(current_user)
  end

  private

  def category_params
    params.require(:group).permit(:name, :icon)
  end
end
