class Restaurant < ApplicationRecord
  # Associations
  has_many :reviews, dependent: :destroy

  # Validations
  CATEGORIES = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: CATEGORIES }
  validates :name, presence: true
  validates :address, presence: true
end
