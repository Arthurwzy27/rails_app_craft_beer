class BookingsController < ApplicationController
  before_action :set_total_price

  def new
    @booking = Booking.new
    @location = Location.find(params[:location_id])
    authorize @booking
    authorize @location
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.location = Location.find(params[:location_id])
    authorize @booking
    if @booking.save
      redirect_to booking_path(@booking)
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

  def set_total_price
    self.total_price = (self.end_date - self.start_date).to_i * self.factory.price
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
