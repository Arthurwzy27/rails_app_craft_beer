class Booking < ApplicationRecord
  belongs_to :factory
  belongs_to :user


  # I can do @booking.accepted!, @booking.declined!, etc.
  enum status: [ :pending, :accepted, :declined ]
  before_create :set_total_price

  def set_total_price
    self.total_price = (self.end_date - self.start_date).to_i * self.factory.price_per_day
  end
end
