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

  # Validations
  validates :title, presence: true, allow_blank: false
  validates :year, presence: true
  validates :school, presence: true
  validates :user, presence: true

  def subcategories
    self.thesis_diploma_subcategories.map { |diploma_subcategory| diploma_subcategory.subcategory }
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
