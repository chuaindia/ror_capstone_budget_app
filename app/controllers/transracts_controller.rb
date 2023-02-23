class TransractsController < ApplicationController
  def index
    @groups = Group.find_by(id: params[:group_id])
    @transracts = TransractGroup.includes(:transract).where(group: @groups).order(created_at: :desc)
    @total_transactions = @transracts.map { |transaction| transaction.transract.amount }.sum
  end

  def new
    @new_transract = Transract.new
    @groups = Group.where(author: current_user)
  end

  def create
    @create_transract = Transract.create(name: params[:name], amount: params[:amount], author: current_user)
    if @create_transract
      @new_transract_group = TransractGroup.create(transract_id: @create_transract.id, group_id: params[:group_id])
      redirect_to groups_path
    else
      render :new
    end
  end
end
