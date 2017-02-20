class School < ApplicationRecord

  has_many :users
  has_many :school_subcategories
  has_many :subcategories, through: :school_subcategories

  validates :name, presence: true, length: { minimum: 10 }, uniqueness: { case_sensitive: false }
  validates :acronym, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :address_1, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
