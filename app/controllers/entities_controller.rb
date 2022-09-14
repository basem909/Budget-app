class EntitiesController < ApplicationController
  def new
    @transaction = Entity.new
  end

  def create
    @transaction = Entity.new(entity_params)
    @transaction.author_id = current_user.id
    if @transaction.save
      GroupEntity.create(group_id: params[:category_id], entity_id: @transaction.id)
redirect_to user_category_path(id: params[:category_id]),
                  flash: { success: 'Transaction created successfully.' }
    else
      redirect_to new_user_category_entity_path(category_id:params[:id]), flash: { error: @transaction.errors.full_messages }
    end
  end

  def destroy
    Entity.destroy(params[:category_id])
    redirect_back(fallback_location: user_categories_path)
  end

  private

  def entity_params
    params.permit(:name, :amount, :group_id => :category_id)
  end
end
