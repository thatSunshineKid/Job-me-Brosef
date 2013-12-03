require 'spec_helper'

describe "job_applications/new" do
  before(:each) do
    assign(:job_application, stub_model(JobApplication,
      :company_name => "MyString",
      :job_title => "MyString",
      :contact => "MyString",
      :cover_letter_completed => false,
      :resume_completed => false,
      :cover_letter_and_resume_sent => false,
      :company_response => false,
      :notes => "MyString"
    ).as_new_record)
  end

  it "renders new job_application form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", job_applications_path, "post" do
      assert_select "input#job_application_company_name[name=?]", "job_application[company_name]"
      assert_select "input#job_application_job_title[name=?]", "job_application[job_title]"
      assert_select "input#job_application_contact[name=?]", "job_application[contact]"
      assert_select "input#job_application_cover_letter_completed[name=?]", "job_application[cover_letter_completed]"
      assert_select "input#job_application_resume_completed[name=?]", "job_application[resume_completed]"
      assert_select "input#job_application_cover_letter_and_resume_sent[name=?]", "job_application[cover_letter_and_resume_sent]"
      assert_select "input#job_application_company_response[name=?]", "job_application[company_response]"
      assert_select "input#job_application_notes[name=?]", "job_application[notes]"
    end
  end
end
