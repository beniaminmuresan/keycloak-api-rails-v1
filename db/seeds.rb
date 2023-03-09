
user = User.find_or_initialize_by(keycloak_id: ENV.fetch('KEYCLOACK_HARDCODED_USER_ID', nil)) do |user|
  user.first_name = 'Test'
  user.last_name = 'User'
  user.email = 'test@test.com'
end
user.save