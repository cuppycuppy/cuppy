json.array!(@cups) do |cup|
  json.extract! cup, :id, :title, :user_id
  json.url cup_url(cup, format: :json)
end
