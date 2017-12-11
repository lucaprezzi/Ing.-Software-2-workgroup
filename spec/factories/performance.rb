
FactoryBot.define do
  factory :performance do
    client_id     1
    description   "Sviluppo App"
    duration      5
    rate_id       1
    date          Date.current
  end
end
