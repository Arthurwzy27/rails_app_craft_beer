class FactoriesController < ApplicationController
  def show
    @factory = Factory.find(params[:id])
    authorize @factory
  end
end
