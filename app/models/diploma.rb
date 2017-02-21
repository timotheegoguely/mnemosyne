class Diploma < ApplicationRecord
  has_many :theses
  has_many :school_diplomas
  has_many :schools, through: :school_diplomas
  has_many :diploma_subcategories
  has_many :subcategories, through: :diploma_subcategories

  validates :name, presence: true
  validates :degree, presence: true
end
