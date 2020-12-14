class ToursController < ApplicationController
  before_action :set_tour, only: [:show, :edit, :destroy, :update]
  before_action :check_if_admin, only: [:edit, :new, :create, :destroy, :update]
  def show
  end

  def edit
    @countries = Country.all
  end

  def update
    if @tour.update(tour_params)
      redirect_to home_index_path
    else
      render :edit
    end
  end

  def new
    @tour = Tour.new
    @countries = Country.all
  end

  def create
    @tour = Tour.new(tour_params)
    if @tour.save
      redirect_to home_index_path
    else
      render :new
    end
  end

  def destroy
    @tour.destroy
    redirect_to home_index_path
  end

  def filter
    #binding.pry
    @countries = Country.all
    @tours = Tour.where(country_id: Country.find_by_name(params[:country]))
  end

  private

  def check_if_admin
    raise Exception.new('gtfo lil hacker, only admins allowed') if !current_user.admin?
  end

  def set_tour
    @tour = Tour.find(params[:id])
  end

  def tour_params
    params.require(:tour).permit(:title, :country_id, :price, :tourists_count, :start_date, :end_date)
  end
end
