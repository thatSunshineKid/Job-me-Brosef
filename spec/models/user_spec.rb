require 'spec_helper'

describe User do
  it "has a name that matches 'Anna'" do
    user = User.new(name: 'Anna')
    user.name.should match(/Anna/)	
  end

  it "changes the number of users" do
  	user = User.new(name: 'bobby', password: "123456")
  	expect { user.save }.to change { User.count }.by(1)
  end
  it "should not have any jobs to start" do
  	user = User.new(name: 'bob')
  	user.job_applications.count.should == 0
  end

end

