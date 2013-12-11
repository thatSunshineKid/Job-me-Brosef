describe User do
  it "has a name that matches 'Anna'" do
    user = User.new(name: 'Anna')
    user.name.should match(/Anna /)	
end