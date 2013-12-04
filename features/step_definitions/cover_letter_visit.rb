
Given /^a user visits the home page$/ do
	visit '/'
end

When /^they click the link to visit the cover letter page$/ do
	visit '/static_pages/cover_letter_tips'
end

Then /^they should(not)? see "(.*?)"$/ do |not, content|
	if not
		page.should_not have_content(content)
	else
		page.should have_content(content)
	end
end

When /^they are not on the cover letter page$/ do
	visit '/users'
end




