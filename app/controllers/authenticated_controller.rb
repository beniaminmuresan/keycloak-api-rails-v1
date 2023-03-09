class AuthenticatedController < ApplicationController
  def user
    keycloak_id = Keycloak::Helper.current_user_id(request.env)
    puts "------ Keycloak USER ID ------"
    puts keycloak_id
    puts "------ Keycloak USER ID ------"
    User.find_by(keycloak_id: keycloak_id)
  end
end
