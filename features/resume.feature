Feature: resume tracking

	Scenario: successful view of resume
		Given a user starts at the home page
		When the user does visit the job application index page
		Then they should be able to see "Resume completed"

	Scenario: Unsuccessful view of resume
		Given a user starts at the home page
		When the user doesn't visit the job application index page
		Then they shouldn't be able to see "Resume completed"
