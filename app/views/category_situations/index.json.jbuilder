json.array!(@category_situations) do |category_situation|
  json.extract! category_situation, :id, :category, :situation_id
  json.url category_situation_url(category_situation, format: :json)
end
