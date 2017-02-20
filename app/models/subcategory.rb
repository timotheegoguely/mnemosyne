class Subcategory < ApplicationRecord

  belongs_to :category
  has_many :school_subcategories
  has_many :schools, through: :school_subcategories

  validates :name, presence: true, uniqueness: { case_sensitive: false }

end
