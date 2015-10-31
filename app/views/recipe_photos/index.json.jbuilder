json.array!(@recipe_photos) do |recipe_photo|
  json.extract! recipe_photo, :id, :title, :recipe_id
  json.url recipe_photo_url(recipe_photo, format: :json)
end
