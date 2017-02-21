class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Bookmarks : voter
  acts_as_votable

  belongs_to :school
  has_many :theses
  # Validations
  validates :email, :password, presence: true
end
