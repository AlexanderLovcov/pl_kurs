class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
    @tours = Tour.all
  end
end