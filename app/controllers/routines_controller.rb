class RoutinesController < ApplicationController
  before_action :require_signin

  def index
    @group = Group.all
    @routine = Routine.all
    @user = User.all
  end

  def new
    @routine = Routine.new
  end

  def create
    @routine = Routine.create(routine_params)
    @routine.group = params[:group_ids]

    if @routine.save
      redirect_to groups_path, notice: 'Your activity was loged!, keep working hard!'
    else
      redirect_to groups_path, notice: @routine.errors.full_messages
    end
  end

  def show
    @group = Group.all
    @routine = Routine.all
  end

  def destroy
    @routine = Routine.find(params[:id])
    @routine.destroy

    flash.notice = "Routine '#{@routine.name}' was Deleted!"

    redirect_to groups_path
  end

  def edit
    @routine = Routine.find(params[:id])
  end

  def update
    @routine = Routine.find(params[:id])
    @routine.update(routine_params)

    flash.notice = "Routine '#{@routine.name}' was Updated!"

    redirect_to user_path(current_user)
  end

  private

  def routine_params
    params.require(:routine).permit(:name, :hours, :user_id, :group_ids)
  end
end
