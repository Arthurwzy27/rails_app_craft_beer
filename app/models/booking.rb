class Booking < ApplicationRecord
  belongs_to :factory
  belongs_to :user
end
