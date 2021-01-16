class UsersController < ApplicationController
    def new
      @user = User.new
    end
  
    def create
      
      @user = User.new(user_params)
      
      if @user.save
        session[:name] = @user.name
        redirect_to groups_path, notice: 'Welcome to the party!'
      else
        redirect_to new_user_path, notice: 'Not a valid name'
      end
    end
  
    def show
      @groups = Group.all
      @user = User.find_by(id: params[:id])
      @routines = @user.routines
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name)
    end
  end
  