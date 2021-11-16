class FactoriesController < ApplicationController
  def index
    @factories = policy_scope(Factory).order(created_at: :desc)
    authorize @factories
  end

  def show
    @factory = Factory.find(params[:id])
    authorize @factory
  end
end
