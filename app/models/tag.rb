class Tag < ApplicationRecord
  belongs_to :thesis
  validates :name, presence: true
end
