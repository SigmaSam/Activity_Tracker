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
    if @routine.save
      redirect_to groups_path, notice: 'Your activity was loged!, keep working hard!'
    else
      redirect_to groups_path, notice: 'Your activity was not loged!'
    end
  end

  private

  def routine_params
    params.require(:routine).permit(:name, :hours, :user_id, :group_id)
  end
end
