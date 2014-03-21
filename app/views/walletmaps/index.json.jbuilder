json.array!(@walletmaps) do |walletmap|
  json.extract! walletmap, :id, :wallet, :address, :address_type
  json.url walletmap_url(walletmap, format: :json)
end
