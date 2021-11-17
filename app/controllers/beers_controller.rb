class BeersController < ApplicationController
  def index
    @beers = Beer.all
    authorize @beers
  end

  def show
    @beer = Beer.find(params[:id])
    authorize @beer
  end
end
