class GroupsController < ApplicationController
  def index
    @categories = Group.where(author: current_user)
    @transracts = Transract.where(author: current_user)
    @transract_groups = TransractGroup.all
  end

  def new
    @new_category = Group.new
  end

  def create
    @create_category = Group.create(create_category_params)
    if @create_category.save
      redirect_to groups_path
    else
      render :new
    end
  end

  private

  def create_category_params
    params.permit(:name, :icon, :author_id)
  end
end
