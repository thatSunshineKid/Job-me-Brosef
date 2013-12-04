Feature: Visit Cover Letter

	Scenario: Successful Visit
		Given a user visits the home page
		When they click the link to visit the cover letter page
		Then they should see "the purpose of this page is to give you tips on writing a cover letter"

	Scenario: Unsuccessful Visit
		Given a user visits the home page
		When they are not on the cover letter page
		Then they shouldn't see "the purpose of this page is to give you tips on writing a cover letter"
