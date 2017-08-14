class UserResource < JSONAPI::Resource
  attributes :first_name, :last_name, :email, :api_key
  filters :email, :password, :api_key
end
