Given /^a user starts at the home page$/ do
	visit '/'
end

When /^the user does(n't)? visit the job application index page$/ do |foo|
	if foo
		visit '/static_pages/about'
	else
		visit '/job_applications'
	end
end

When /^the user does(n't)? visit the job index page$/ do |baz|
	if baz
		visit '/static_pages/about'
	else
		visit '/job_applications'
	end
end

Then /^they should(n't)? be able to see "(.*?)"$/ do |bar, content|
	if bar
		page.should_not have_content(content)
	else
		page.should have_content(content)
	end
end

Then /^they should(n't)? be able to view "(.*?)"$/ do |sock, content|
	if sock
		page.should_not have_content(content)
	else
		page.should have_content(content)
	end
end


