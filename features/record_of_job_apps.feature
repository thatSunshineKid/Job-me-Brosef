Feature: record of job applications sent

	Scenario: successful view of all job applications
		Given a user starts at the home page
		When the user does visit the job index page
		Then they should be able to view "Job title"

	Scenario: Unsuccessful view of resume
		Given a user starts at the home page
		When the user doesn't visit the job index page
		Then they shouldn't be able to view "Job title"
