class Tag < ApplicationRecord
  has_many :thesis_tags
  has_many :theses, through: :thesis_tags
  validates :name, presence: true
end
