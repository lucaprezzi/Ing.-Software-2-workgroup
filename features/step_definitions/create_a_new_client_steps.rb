Given("there is not a client called {string}") do |string|
  visit "/clients"
  expect(page).to have_no_content(string)
end

Then("I should be on the show page of my new client") do
  client = Client.all.last
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == "/clients/#{client.id}"
  end
end

Then("I should be on the new page of clients") do
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == ("/clients/" + Client.all.last.id.to_s + "/edit")
  end
end
