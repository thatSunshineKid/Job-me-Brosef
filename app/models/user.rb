class User < ActiveRecord::Base

  before_save :create_remember_token
  has_secure_password
  attr_accessible :name, :password, :password_confirmation
  validates :name, presence: true, length: { maximum: 20}, uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6}
  

  has_many :job_applications, dependent: :destroy


  private

  	def create_remember_token
  	  self.remember_token = SecureRandom.urlsafe_base64
  	end
end
