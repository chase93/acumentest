@test
Feature: Contact Us Page
As an end user that is curious about Acumen
I want to browse a contact us page
So that I can find contact details
And get in touch to find out more

	Scenario: Accurate Address
		Given I am on the Acumen Contact Us page
		When I navigate to the Contact Us page
		Then I should see an accurate post code "TW9 1HY"

	Scenario: Submission Vaildation
		Given I am on the Acumen Contact Us page
		When I submit just an email address and some message text
		And all other fields are blank
		Then I should see errors about other required fields
