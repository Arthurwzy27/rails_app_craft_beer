class FactoriesController < ApplicationController
  def index
    @factories = Factory.all
  end

  def show
    @factory = Factory.find(params[:id])
  end
end
