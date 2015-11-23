json.array!(@user_situations) do |user_situation|
  json.extract! user_situation, :id, :user_id, :situation_id
  json.url user_situation_url(user_situation, format: :json)
end
