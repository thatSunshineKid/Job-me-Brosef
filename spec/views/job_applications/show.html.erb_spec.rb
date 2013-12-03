require 'spec_helper'

describe "job_applications/show" do
  before(:each) do
    @job_application = assign(:job_application, stub_model(JobApplication,
      :company_name => "Company Name",
      :job_title => "Job Title",
      :contact => "Contact",
      :cover_letter_completed => false,
      :resume_completed => false,
      :cover_letter_and_resume_sent => false,
      :company_response => false,
      :notes => "Notes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Company Name/)
    rendered.should match(/Job Title/)
    rendered.should match(/Contact/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/false/)
    rendered.should match(/Notes/)
  end
end
