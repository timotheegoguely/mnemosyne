class Category < ApplicationRecord
  has_many :subcategories

  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
