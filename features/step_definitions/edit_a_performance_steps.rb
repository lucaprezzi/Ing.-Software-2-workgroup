Given("there is a performance of the client called {string}") do |string|
  FactoryBot.create(:rate)
  FactoryBot.create(:client, nominative: string)
  FactoryBot.create(:performance, client_id: Client.all.select{|x| x.nominative=string}.last.id)
end

Then("I should be on the show page of the performance of the client called {string}") do |string|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == "/performances/"+(Performance.all.select{|x| x.client_id = Client.all.select{|y| y.nominative==string}}.last.id).to_s
  end
end
