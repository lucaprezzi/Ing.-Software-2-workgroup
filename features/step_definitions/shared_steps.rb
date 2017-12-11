
When("I press {string}") do |string|
  click_on string
end

When("I fill in the following:") do |table|
  data = table.raw
  data.each{|x|
    fill_in x[0], with: x[1]}
end

Then("I should see a notice indicating success") do
  expect(page).to have_content("was successfully")
end

Then("I should get an error message") do
  expect(page).to have_css('div', :id => "error_explanation")
end

Given("there is a client called {string}") do |string|
  FactoryBot.create(:client, nominative: string)
end

When("I select {string} from {string}") do |string, string2|
  select(string, :from => string2).select_option
end

When("I do not select client from {string}") do |string|
  select("", :from => string).select_option
end

Then("I should be on settings page") do
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == "/settings"
  end
end

Then("I should be on invoices page") do
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == "/invoices"
  end
end

Then("I should be on clients page") do
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == "/clients"
  end
end

Then("I should be on performances page") do
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == "/performances"
  end
end

Then("I should be on rates page") do
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == "/rates"
  end
end

Given("I am on the settings page") do
  visit "/settings"
end

Given("there is a rate with value {string}") do |string|
  FactoryBot.create(:rate, hourly_rate: string)
end

Given("I am on the home page") do
  visit "/home"
end

Then("I should see {string}") do |string|
  expect(page).to have_content(string)
end

Given("I am on the clients page") do
  visit "/clients"
end

Given("I am on the performances page") do
  visit "/performances"
end

Given("I am on the rates page") do
  visit '/rates'
end


When("I press Ok on the popup") do
  page.driver.browser.switch_to.alert.accept
end

Given("I am on the invoices page") do
  visit "/invoices"
end

Given("there is a performance called {string} related to the client called {string}") do |string2,string|
  FactoryBot.create(:rate)
  FactoryBot.create(:client, nominative: string)
  FactoryBot.create(:performance, client_id: Client.all.select{|x| x.nominative=string}.last.id, description: string2)
end

Given("there is an invoice") do
  string = "Centro Linguistico di Ateneo"
  FactoryBot.create(:rate)
  FactoryBot.create(:client, nominative: string)
  FactoryBot.create(:performance, client_id: Client.all.select{|x| x.nominative=string}.last.id)
  FactoryBot.create(:invoice, client_id: Client.all.select{|x| x.nominative=string}.last.id)
end

Given("there is a performance") do
  FactoryBot.create(:client)
  FactoryBot.create(:performance)
end

Given("there is an invoice of the client called {string}") do |string|
  FactoryBot.create(:rate)
  FactoryBot.create(:client, nominative: string)
  FactoryBot.create(:performance)
  FactoryBot.create(:invoice, client_id: Client.all.select{|x| x.nominative=string}.last.id)
end

Then("I should be on the show page of my new rate") do
  rate = Rate.all.last
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == "/rates/#{rate.id}"
  end
end

Then("the {string} field should contain {string}") do |string, string2|
  expect(page).to have_content("#{string.capitalize.gsub! '_', ' '}: #{string2}")
end

Given("the performance of the client called {string} has not been yet invoiced") do |string|
  Performance.all.last.invoiced = false
end

Given("the performance of the client called {string} has been already invoiced") do |string|
  FactoryBot.create(:invoice, client_id: Client.all.select{|x| x.nominative == string}.last.id)
end

Then("the submit button should not appear") do
  expect(page).to have_no_css('input')
end
