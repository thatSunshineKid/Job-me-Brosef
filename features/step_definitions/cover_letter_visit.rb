

Given /^a user visits the cover letter help page$/ do
	visit cover_letter_tips_path
end

When /^they click the link to visit the cover letter page$/ do
	visit cover_letter_tips_path
end

Then /^Then they should see the cover letter content/ do
	expect(page).to have_content 'Success'
end