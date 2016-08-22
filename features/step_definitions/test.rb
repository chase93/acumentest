Given(/^I am on the Acumen Contact Us page$/) do
 visit('http://www.acumenci.com/contact-us/')
     expect(page).to have_content("Acumen Commercial", wait:30)
end

When(/^I navigate to the Contact Us page$/) do
  puts 'Go to contact us page'
end

Then(/^I should see an accurate post code "(TW9 1HY)"$/) do |arg1|
  expect(page).have_content("TW9 1HY")
  puts 'I am now on the page'
end
When(/^I submit just an email address and some message text$/) do
  fill_in('your-email', :with => 'cmilano@bookingbug.com')
  fill_in('your-message', :with => 'blah blah blah')
  expect(page).to have_content("cmilano@bookingbug.com")
puts 'I fill in some stuff'
end

When(/^all other fields are blank$/) do
   page.find(:xpath, '//*[@id="wpcf7-f682-p495-o1"]/form/p[8]/input').click
   expect(page).to have_content("Validation errors occurred", wait:5)
puts 'I recieve all the errors'
end

Then(/^I should see errors about other required fields$/) do
  puts 'I win'
end
