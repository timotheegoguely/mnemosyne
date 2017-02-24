class Subcategory < ApplicationRecord

  # Elasticsearch (using searchkick gem)
  searchkick

  belongs_to :category
  has_many :school_subcategories
  has_many :schools, through: :school_subcategories
  has_many :diploma_subcategories
  has_many :diplomas, through: :diploma_subcategories
  has_many :thesis_diploma_subcategories
  has_many :thesis_diploma, through: :thesis_diploma_subcategories

  # Validations
  validates :name, presence: true, uniqueness: { case_sensitive: false }
end
