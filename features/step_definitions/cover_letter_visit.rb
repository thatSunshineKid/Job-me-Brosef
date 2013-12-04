

Given /^a user visits the cover letter help page$/ do
	visit '/'
end

When /^they click the link to visit the cover letter page$/ do
	visit '/static_pages/cover_letter_tips'
end

Then /^they should see "(.*?)"$/ do |content|
	page.should have_content(content)
end