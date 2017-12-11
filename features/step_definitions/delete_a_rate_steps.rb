Then("the rate {string} should not be in the list") do |string|
  expect(page).to have_no_content(string)
end

Then("all the performances with rate {string} should be deleted") do |string|
  expect(page).to have_no_content(string)
end
