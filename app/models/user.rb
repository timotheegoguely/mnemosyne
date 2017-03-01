class User < ApplicationRecord
  before_validation :set_default_password

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:twitter]

  # Omniauth Twitter
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
    end
  end

  # Authentication token
  acts_as_token_authenticatable
  # Bookmarks : voter
  acts_as_voter

  # Associations
  belongs_to :school
  has_many :theses, dependent: :destroy

  # Validations
  validates :email, :password, presence: true

  def set_default_password
    self.password = '123456'
    self.password_confirmation = '123456'
  end
end
