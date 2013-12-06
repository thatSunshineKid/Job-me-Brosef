class User < ActiveRecord::Base

  before_create :create_remember_token

  attr_accessible :name, :password, :password_confirmation
  validates :name, presence: true, length: { maximum: 20}, uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6}
  has_secure_password

  has_many :job_applications

  def User.new_remember_token
  	SecureRandom.urlsafe_base64
  end


  def User.encrypt(token)
  	Digest::SHA1.hexidigest(token.to_s)
  end

  private

  	def create_remember_token
  	  self.remember_token = User.encrypt(User.new_remember_token)
  	end
end
