json.array!(@companies) do |company|
  json.extract! company, :id, :name, :contact, :phone, :email, :website, :address_1, :address_2, :city, :province, :postal_code, :employees, :projects, :clients, :categories
  json.url company_url(company, format: :json)
end
