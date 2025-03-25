class Museum < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
