class ProfilesController < AuthenticatedController
  def current
    render json: user
  end
end
