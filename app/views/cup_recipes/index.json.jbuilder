json.array!(@cup_recipes) do |cup_recipe|
  json.extract! cup_recipe, :id, :cup_id, :recipe_id
  json.url cup_recipe_url(cup_recipe, format: :json)
end
