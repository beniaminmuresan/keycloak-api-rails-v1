class AuthenticatedController < ApplicationController
  def user
    keycloak_id = Keycloak::Helper.current_user_id(request.env)
    puts keycloak_id
    User.find_by(keycloak_id: keycloak_id)
  end
end
