class GroupsController < ApplicationController
  before_action :require_signin

  def index
    @group = Group.all
    @routine = Routine.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path, notice: 'Group sucessfully created'
    else
      render :new
    end
  end

  def show
    @group = Group.find(params[:id])
    @routine = Routine.find(params[:id]) unless @routine.nil?
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
