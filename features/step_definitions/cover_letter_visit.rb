

Given /^a user visits the cover letter help page$/ do
	visit '/'
end

When /^they click the link to visit the cover letter page$/ do
	visit '/static_pages/cover_letter_tips'
end

Then /^Then they should see the cover letter content/ do
	expect(page).to have_content 'Success'
end