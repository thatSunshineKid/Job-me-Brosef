Feature: Visit Cover Letter

	Scenario: Successful Visit
		Given a user visits the cover letter help page
		When they click the link to visit the cover letter page
		Then they should see "the purpose of this page is to give you tips on writing a cover letter"

	Scenario: Unsuccessful Visit
		Given a user tries to visit the cover letter help page
		When they go to the wrong link
		Then they should not see "the purpose of this page is to give you tips on writing a cover letter"