class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Bookmarks : voter
  acts_as_votable

  belongs_to :school
  # has_and_belongs_to_many :schools
  has_many :theses
  # Validations
  validates :email, :password, presence: true

  # def school_thesis(thesis)
  #   self.thesis.school
  # end

end
