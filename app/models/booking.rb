class Booking < ApplicationRecord
  belongs_to :factory
  belongs_to :user

  # I can do @booking.accepted!, @booking.declined!, etc.
  enum status: [ :pending, :accepted, :declined ]
end
