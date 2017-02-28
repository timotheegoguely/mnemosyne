require 'set'

class Thesis < ApplicationRecord

  # Elasticsearch (using searchkick gem)
  searchkick
  scope :search_import, -> { includes(:user) }


  # has_attachment :document

  # Bookmark
  acts_as_votable
  mount_uploader :document, DocumentUploader
  belongs_to :user
  belongs_to :school
  has_many :thesis_tags
  has_many :tags, through: :thesis_tags
  has_one :thesis_diploma
  has_one :diploma, through: :thesis_diploma
  has_many :thesis_diploma_subcategories, through: :thesis_diploma

  # Validations
  validates :title, presence: true, allow_blank: false
  validates :year, presence: true
  validates :school, presence: true

  def subcategories
    self.thesis_diploma_subcategories.map { |diploma_subcategory| diploma_subcategory.subcategory }
  end

  def categories
    categories = Set.new
    self.subcategories.each do |subcategory|
      categories << subcategory.category.name
      return categories.to_a
    end
  end

  def previous
    previous_thesis = self.class.where("id < ?", id).last
    if previous_thesis.nil?
      previous_thesis = self.class.where("id > ?", id).last
    else
      previous_thesis
    end
  end

  def next
    next_thesis = self.class.where("id > ?", id).first
    if next_thesis.nil?
      next_thesis = self.class.where("id < ?", id).first
    else
      next_thesis
    end
  end
end

CATEGORIES = [
  "architecture",
  "patrimoines",
  "arts-plastiques",
  "spectacle-vivant",
  "cinema-et-audiovisuel",
  "livre",
  "presse",
  "gestion-et-mediation"
]
