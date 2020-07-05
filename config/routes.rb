Rails.application.routes.draw do
  devise_for :models
  mount_devise_token_auth_for 'User',
                              at: 'api/v1/auth', skip: %i[omniauth_callbacks]

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      resources :performance_data, only: [:create, :index]
    end
  end
end
