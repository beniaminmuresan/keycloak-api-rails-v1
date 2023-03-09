Rails.application.routes.draw do
  resources :profiles do
    get :current, on: :collection
  end
end
