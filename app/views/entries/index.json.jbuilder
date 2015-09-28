json.array!(@entries) do |entry|
  json.extract! entry, :id, :minutes, :rate, :client_id, :company_id, :employee_id
  json.url entry_url(entry, format: :json)
end
