class Thesis < ApplicationRecord
  belongs_to :user
  # belongs_to :diploma
  belongs_to :school
  has_many :tags, through: :thesis_tags

  # Validations
  validates :title, presence: true, allow_blank: false
  validates :year, presence: true, numericality: { only_integer: true }
  validates :school, presence: true
  validates :diploma, presence: true
end
