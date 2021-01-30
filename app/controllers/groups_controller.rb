class GroupsController < ApplicationController
  before_action :require_signin

  def index
    @group = Group.all
    @routine = Routine.all
    @user = User.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to groups_path, notice: 'Group sucessfully created'
    else
      render :new, notice: @group.errors.full_messages
    end
  end

  def show
    @group = Group.find(params[:id])
    @routine = Routine.find(params[:id]) unless @routine.nil?
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy

    flash.notice = "Group '#{@group.name}' was Deleted!"

    redirect_to groups_path
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)

    flash.notice = "Group '#{@group.name}' was Updated!"

    redirect_to group_path(@group)
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
