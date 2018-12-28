class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all.includes(:fee)
  end
end
