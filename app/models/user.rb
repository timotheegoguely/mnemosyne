class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Authentication token
  acts_as_token_authenticatable
  # Bookmarks : voter
  acts_as_voter

  # Associations
  belongs_to :school
  has_many :theses, dependent: :destroy

  # Validations
  validates :email, :password, presence: true
end
