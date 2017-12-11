Then("I should be on not invoiced performances page") do
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == "/performances/no_invoiced/true"
  end
end

Given("I am on the not invoiced performances page") do
  visit "/performances/no_invoiced/true"
end
