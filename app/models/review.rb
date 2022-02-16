class Review < ApplicationRecord
  # Associations
  belongs_to :restaurant

  # Validations
  validates :rating, presence: true, numericality: true, inclusion: { in: (0..5) }
  validates :content, presence: true
end
