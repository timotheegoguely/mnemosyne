class ThesisDiploma < ApplicationRecord
  belongs_to :thesis
  belongs_to :diploma
  has_many :thesis_diploma_subcategories
end
