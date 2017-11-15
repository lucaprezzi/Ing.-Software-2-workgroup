json.extract! invoice, :id, :client_id, :number, :date, :file, :amount, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
