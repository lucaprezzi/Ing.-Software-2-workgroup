
Then("I should not see the client {string} in the dropdown menu") do |string|
  expect(page).to have_no_css('option', text: string)
end

Given("there are at least one performance related to the client called {string} that has not been invoiced in the past") do |string|
  if (Client.where(nominative: string).last == nil)
    FactoryBot.create(:client, nominative: string)
  end
  if (Rate.all.last == nil)
    FactoryBot.create(:rate)
  end
  FactoryBot.create(:performance, client_id: Client.all.select{|x| x.nominative = string}.last.id)
end

Given("there is not at least one performance related to the client called {string} that has not been invoiced in the past") do |string|
  FactoryBot.create(:client, nominative: string)
  FactoryBot.create(:rate)
  FactoryBot.create(:performance, client_id: Client.all.select{|x| x.nominative = string}.last.id)
  FactoryBot.create(:invoice, client_id: Client.all.select{|x| x.nominative = string}.last.id)
end
