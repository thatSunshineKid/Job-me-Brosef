require 'spec_helper'

describe "job_applications/index" do
  before(:each) do
    assign(:job_applications, [
      stub_model(JobApplication,
        :company_name => "Company Name",
        :job_title => "Job Title",
        :contact => "Contact",
        :cover_letter_completed => false,
        :resume_completed => false,
        :cover_letter_and_resume_sent => false,
        :company_response => false,
        :notes => "Notes"
      ),
      stub_model(JobApplication,
        :company_name => "Company Name",
        :job_title => "Job Title",
        :contact => "Contact",
        :cover_letter_completed => false,
        :resume_completed => false,
        :cover_letter_and_resume_sent => false,
        :company_response => false,
        :notes => "Notes"
      )
    ])
  end

  it "renders a list of job_applications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
    assert_select "tr>td", :text => "Job Title".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Notes".to_s, :count => 2
  end
end
