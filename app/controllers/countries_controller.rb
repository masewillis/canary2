class CountriesController < ApplicationController



  def index
    @country = Country.new
    @countries = Country.order(id: :desc)
  end

  def show
     @country = Country.find(params[:id])
  end










end
