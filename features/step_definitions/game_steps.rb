Given(/^player arrives to the game page$/) do
  visit '/game'
end

And(/^sees 'Welcome !'$/) do
  expect(page).to have_content('Welcome !')
end

When(/^player clicks on the image$/) do
  find('.rock').click
end

Then(/^he should see 'You won!'$/) do
  expect(page).to have_content('You won!')
end
