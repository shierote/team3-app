class HomeController < ApplicationController
  def index
    @users = User.all.includes(:fee)
  end
end
