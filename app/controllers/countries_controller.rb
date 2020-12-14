class CountriesController < ApplicationController

  before_action :check_if_admin
  before_action :set_list_of_countries

  def create
    Country.create!(name: params[:country][:name])
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
  end

  def index
  end

  private

  def check_if_admin
    raise Exception.new('gtfo lil hacker, only admins allowed') if !current_user.admin?
  end

  def set_list_of_countries
    @countries = Country.all
  end

end
