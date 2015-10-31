json.array!(@users) do |user|
  json.extract! user, :id, :username, :password_digest, :email, :name, :age
  json.url user_url(user, format: :json)
end
