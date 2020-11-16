class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :model, :brand, :price, :description, presence: true
  validates :title, presence: true, uniqueness: true
end
