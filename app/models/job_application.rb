class JobApplication < ActiveRecord::Base
  attr_accessible :company_name, :company_response, :contact, :cover_letter_and_resume_sent, :cover_letter_completed, :job_title, :notes, :resume_completed
  belongs_to :user

  validates :user_id, presence: true
  
  
  validates :company_name, presence: true, length: { maximum: 50 }
  validates :job_title, presence: true, length: { maximum: 50 }
  validates :notes, length: { maximum: 50 }


  default_scope order: 'job_applications.created_at DESC'



end
