json.extract! client, :id, :nominative, :email, :via, :civico, :cap, :citta, :provincia, :stato, :numero, :partita_iva, :codice_fiscale, :created_at, :updated_at
json.url client_url(client, format: :json)
