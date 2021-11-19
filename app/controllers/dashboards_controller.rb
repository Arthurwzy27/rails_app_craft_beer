class DashboardsController < ApplicationController
  def show
    @recieved_bookings = current_user.recieved_bookings
    @bookings = current_user.bookings
    @factories = current_user.factories
  end
end
