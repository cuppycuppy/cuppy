json.array!(@recipe_situations) do |recipe_situation|
  json.extract! recipe_situation, :id, :recipe_id, :situation_id
  json.url recipe_situation_url(recipe_situation, format: :json)
end
