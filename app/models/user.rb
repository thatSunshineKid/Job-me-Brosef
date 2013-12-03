class User < ActiveRecord::Base
  attr_accessible :name, :password
  validates :name, presence: true, length: { maximum: 20}, uniqueness: { case_sensitive: false }

  validates :password, presence: true, length: { minimum: 6}
  has_secure_password

  has_many :job_applications
end
