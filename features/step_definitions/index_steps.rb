Given(/^player arrives to the homepage$/) do
  visit'/'
end

And(/^player fills in his name$/) do
  fill_in('player_name', :with => 'John')
end

When(/^clicks on register$/) do
  click_button('Register')
end

Then(/^he should see a welcome message with his name$/) do
  expect(page).to have_content('Welcome John!')
end
