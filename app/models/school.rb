class School < ApplicationRecord
  validates :name, presence: true, length: { minimum: 10 }, uniqueness: { case_sensitive: false }
  validates :acronym, length: { minimum: 3 }, uniqueness: { case_sensitive: false }
  validates :address_1, presence: true
  validates :city, presence: true
  validates :country, presence: true
end
