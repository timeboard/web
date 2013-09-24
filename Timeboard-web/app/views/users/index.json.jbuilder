json.array!(@users) do |user|
  json.extract! user, :email, :password, :first_name, :last_name, :gender, :date_of_birth, :date_joined
  json.url user_url(user, format: :json)
end
