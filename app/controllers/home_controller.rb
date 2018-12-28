class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    gon.data = []
  end
end
