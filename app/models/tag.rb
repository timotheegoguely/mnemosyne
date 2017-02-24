class Tag < ApplicationRecord

  has_many :thesis_tags
  has_many :theses, through: :thesis_tags

  # Validations
  validates :name, presence: true, uniqueness: true
end
