json.array!(@user_connections) do |user_connection|
  json.extract! user_connection, :user_id, :friend_user_id
  json.url user_connection_url(user_connection, format: :json)
end
