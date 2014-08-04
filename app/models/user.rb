class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :articles, dependent: :destroy

  validates :first_name, :last_name, :username, :email, :presence => { :message => "Mag niet leeg zijn." }
  validates :username, uniqueness: { case_sensitive: false, message: "Is al in gebruik." }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX, message: "Is ongeldig." },
                    uniqueness: { case_sensitive: false, message: "Is al in gebruik." }
  validates :password, length: { minimum: 6, message: "Moet minimaal 6 tekens zijn." }, :on => :create
  validates :password_confirmation, presence: { :message => "Wachtwoorden komen niet overeen." }, :on => :create
  validates :password, confirmation: { :message => "Wachtwoorden komen niet overeen." }

end
