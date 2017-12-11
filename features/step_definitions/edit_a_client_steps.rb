
Then("I should be on the show page of the client called {string}") do |string|
  expect(page).to have_content("Nominative: #{string}")
end
