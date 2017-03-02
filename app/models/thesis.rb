require 'set'

class Thesis < ApplicationRecord

  # Elasticsearch (using searchkick gem)
  searchkick

  # has_attachment :document

  acts_as_votable
  acts_as_taggable
  scope :search_import, -> { includes(:tags) }

  mount_uploader :document, DocumentUploader
  belongs_to :user
  belongs_to :school
  has_one :thesis_diploma, dependent: :destroy
  has_one :diploma, through: :thesis_diploma
  has_many :thesis_diploma_subcategories, through: :thesis_diploma
  has_many :subcategories, -> { distinct }, through: :thesis_diploma_subcategories
  has_many :categories, -> { distinct }, through: :subcategories

  # Validations
  validates :title, presence: true, allow_blank: false
  validates :year, presence: true
  validates :school, presence: true
  # validates :diploma, presence: true
  validates :user, presence: true

  # def subcategories
  #   self.thesis_diploma_subcategories.map { |diploma_subcategory| diploma_subcategory.subcategory }
  # end

  def categories_names
    categories = Set.new
    self.subcategories.each do |subcategory|
      categories << subcategory.category.name.parameterize
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

  def search_data
    {
      name_tagged: "#{title} #{tags.map(&:name).join(" ")}"
    }
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
