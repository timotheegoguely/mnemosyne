class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:twitter]

  # Omniauth Twitter
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.uid.to_s+'@twitter.com'
      user.image = auth.info.image
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
end
