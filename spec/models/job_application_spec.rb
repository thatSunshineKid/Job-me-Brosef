require 'spec_helper'

describe JobApplication do
  it "has a company name that matches 'Apple'" do
  	job = JobApplication.new(company_name: "Apple")
  	job.company_name.should match(/Apple/)
  end

  it "won't save if it doesn't have a company_name and job title" do
  	job = JobApplication.new
  	expect { job.save! }.to raise_error(
  		ActiveRecord::RecordInvalid
  		)
  end

end