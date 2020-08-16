Given('I visit the homepage') do
  visit root_path
end

Then('I should see Home page display') do
  expect(page).to have_content("WELCOME TO HOTEL")
end

Then('I should see New Room Button') do
  expect(page).to have_button("New Room")
end

When('I click on New Room Button') do
  redirect_to new_rooms_path
end

Then('I should be redirected to New Room Form') do
  pending # Write code here that turns the phrase above into concrete actions
end
