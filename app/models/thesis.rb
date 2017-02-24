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


end
