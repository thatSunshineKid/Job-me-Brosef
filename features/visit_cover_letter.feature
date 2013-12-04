Feature: Visit Cover Letter

	Scenario: Successful Visit
		Given a user visits the cover letter help page
		When they click the link to visit the cover letter page
		Then they should see the cover letter content

	Scenario: Unsuccessful Visit
		Given a user tries to visit the cover letter help page
		When they go to the wrong link
		Then they should not see the cover letter content