Feature: Visit Helpful Links

	Scenario: Successful Visit
		Given a user visits the home page
		When they click the link to visit the helpful links page
		Then they should see "The purpose of this page is to give you additional sources of help for job applications and whatnot."

	Scenario: Unsuccessful Visit
		Given a user visits the home page
		When they are not on the helpful links page
		Then they shouldn't see "The purpose of this page is to give you additional sources of help for job applications and whatnot."
