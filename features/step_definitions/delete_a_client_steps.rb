Then("all the performances of the client {string} should be deleted") do |string|
  expect(page).to have_no_content(string)
end

Then("the client {string} should not be in the list") do |string|
    expect(page).to have_no_content(string)
end
