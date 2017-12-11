
Given("there is not a rate with value {string}") do |string|
  visit "/rates"
  expect(page).to have_no_content(string)
end
