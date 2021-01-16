class SessionsController < ApplicationController
    def new; end
  
    def create
      @user = User.find_by(name: params[:name])
      if @user.nil?
        flash.now[:alert] = 'User must exist.'
        render :new
      else
        session[:name] = @user.name
        redirect_to groups_path, notice: "Welcome back #{@user.name}"
      end
    end
  
    def destroy
      session[:name] = nil
      redirect_to root_url, notice: 'See you soon'
    end
  end
  