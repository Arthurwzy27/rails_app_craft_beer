class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @location = Location.find(params[:location_id])
    authorize @booking
    authorize @location
  end

  def create
    @booking = Booking.new(booking_params)
    @factory = Factory.find(params[:factory_id])
    @booking.user = current_user
    @booking.factory = @factory
    authorize @booking
    if @booking.save
      redirect_to factory_booking_path(@factory, @booking)
    end
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(status: params[:status])
      redirect_to dashboard_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
