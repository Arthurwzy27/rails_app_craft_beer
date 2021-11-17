class FactoriesController < ApplicationController
  def index
    @factories = policy_scope(Factory).order(created_at: :desc)
    authorize @factories
  end

  def show
    @factory = Factory.find(params[:id])
    authorize @factory
  end

  def new
    @factory = Factory.new
    authorize @factory
  end

  def create
    @factory = Factory.new(factory_params)
    if @factory.save
      redirect_to factory_path(@factory)
    else
      render :new
    end
    authorize @factory
  end

  private

  def factory_params
    params.require(:factory).permit(:name, :description, :location, :price_per_day, :capacity, :user_id)
  end
end
