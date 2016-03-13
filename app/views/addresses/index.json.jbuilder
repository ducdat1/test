json.array!(@addresses) do |address|
  json.extract! address, :id, :city
  json.url address_url(address, format: :json)
end
