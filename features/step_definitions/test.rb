
Given(/^I am on the Acumen Contact Us page$/) do
 visit('http://www.acumenci.com/contact-us/')
     expect(page).to have_content("Acumen Commercial", wait:30)
end

When(/^I navigate to the Contact Us page$/) do
  puts 'step 2'
end

Then(/^I should see an accurate post code "(TW9 1HY)"$/) do |arg1|
  puts 'step 3'
end
When(/^I submit just an email address and some message text$/) do
  fill_in('your-email', :with => 'cmilano@bookingbug.com')
  fill_in('your-message', :with => 'blah blah blah')
end

When(/^all other fields are blank$/) do
  click_button('Submit', wait:5)
end

Then(/^I should see errors about other required fields$/) do
  page.should have_content('Validation errors occurred')
end

