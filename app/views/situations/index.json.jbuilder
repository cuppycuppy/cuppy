json.array!(@situations) do |situation|
  json.extract! situation, :id, :name, :icon, :image
  json.url situation_url(situation, format: :json)
end
