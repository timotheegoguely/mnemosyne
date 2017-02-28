class Category < ApplicationRecord

  searchkick

  has_many :subcategories
  # Validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
