
Then("the performance {string} should not be in the list") do |string|
  expect(page).to have_no_content(string)
end
