class ApplicationController < ActionController::Base
    def current_user
      User.find_by(name: session[:name]) if session[:name]
    end
  
    helper_method :current_user
  
    def require_signin
      unless current_user
        redirect_to log_in_path, alert: 'You have to sign in first'
      end
    end
  
    def already_signin
      redirect_to groups_path, alert: 'Yoy are already logged in.' if current_user
    end
  end
  