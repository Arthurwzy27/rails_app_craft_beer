class FactoriesController < ApplicationController
  def show
    @factory = Factory.find(params[:id])
  end
end
