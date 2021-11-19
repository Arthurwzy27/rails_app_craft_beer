class FactoriesController < ApplicationController
  def index
    @factories = policy_scope(Factory).order(created_at: :desc)
    authorize @factories
    @markers = @factories.geocoded.map do |factory|
      {
        lat: factory.latitude,
        lng: factory.longitude
      }
    end
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
    @factory.user = current_user
    if @factory.save
      redirect_to factory_path(@factory)
    else
      render :new
    end
    authorize @factory
  end

  def destroy
    @factory = Factory.find(params[:id])
    if @factory.destroy
      redirect_to factories_path
    end
    authorize @factory
  end

  private

  def factory_params
    params.require(:factory).permit(:name, :description, :location, :price_per_day, :capacity, :user_id, :body, :photo)
  end
end
