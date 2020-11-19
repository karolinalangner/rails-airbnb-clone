class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :model, :brand, :price, :description, presence: true
  validates :title, presence: true, uniqueness: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_model,
    against: [:title, :model, :brand]
end
