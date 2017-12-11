
FactoryBot.define do
  factory :client do
    nominative  "Università degli Studi di Trento"
    email       "unitn@unitn.it"
    numero      "3891290673"
    via         "Sommarive"
    civico      1
    cap         38123
    citta       "Povo"
    stato       "Italia"
    provincia   "Trento"
    codice_fiscale  "13066701007"
    partita_iva     "UNVTRT66A31H345A"
  end
end
