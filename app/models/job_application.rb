class JobApplication < ActiveRecord::Base
  attr_accessible :company_name, :company_response, :contact, :cover_letter_and_resume_sent, :cover_letter_completed, :job_title, :notes, :resume_completed
end
