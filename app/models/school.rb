class School < ApplicationRecord
  has_many :theses
  has_many :users
  has_many :school_diplomas
  has_many :school_subcategories
  has_many :diplomas, through: :school_diplomas
  has_many :subcategories, through: :school_subcategories
  # Validations
  validates :name, presence: true
  validates :address_1, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
