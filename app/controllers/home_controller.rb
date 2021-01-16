class HomeController < ApplicationController
    before_action :already_signin
    def index; end
  end