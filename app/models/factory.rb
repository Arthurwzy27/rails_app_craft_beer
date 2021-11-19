class Factory < ApplicationRecord
  belongs_to :user
  has_many :bookings

  include PgSearch::Model
  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true }
    }
  # pg_search_scope :global_search,
  #   against: [ :name, :description ],
  #   associated_against: {
  #     user: [ :first_name, :last_name ]
  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }
end
