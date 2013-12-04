
Given /^a user visits the home page$/ do
	visit '/'
end

When /^they click the link to visit the cover letter page$/ do
	visit '/static_pages/cover_letter_tips'
end

Then /^they should(n't)? see "(.*?)"$/ do |waffle, content|
	if waffle
		page.should_not have_content(content)
	else
		page.should have_content(content)
	end
end

When /^they are not on the cover letter page$/ do
	visit '/static_pages/about'
end

When /^they click the link to visit the helpful links page$/ do
	visit '/static_pages/helpful_links'
end

When /^they are not on the helpful links page$/ do
	visit '/static_pages/about'
end




