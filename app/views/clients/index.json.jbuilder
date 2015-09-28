json.array!(@clients) do |client|
  json.extract! client, :id, :name, :contact, :phone, :email, :company_id
  json.url client_url(client, format: :json)
end
