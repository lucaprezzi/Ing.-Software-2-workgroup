Given("there is a performance of the previous month") do
  FactoryBot.create(:client)
  FactoryBot.create(:rate)
  FactoryBot.create(:performance, date: Date.current<<1)
end

When("I open the home page") do
  visit "/home"
end

Then("all the performances related to the previous month are invoiced") do
  Performance.all.select{|x| x.date.month != Date.current.month}.last!=nil
end
