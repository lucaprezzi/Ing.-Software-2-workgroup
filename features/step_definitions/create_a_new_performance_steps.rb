
Then("I should be on the show page of the performance {string}") do |string|
  current_path = URI.parse(current_url).path
  if current_path.respond_to? :should
    current_path == "/performances/"+(Performance.all.select{|x| x.description == string}.last.id).to_s
  end
end
