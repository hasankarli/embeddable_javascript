Rails.application.routes.draw do
  resources :sites
  devise_for :users
  root to: "home#index"
  namespace :api do
    namespace :v1 do
      resources :discussions, constraints: { id: /.+/ } do
        resources :comments
      end
    end
  end

  get :embed, to: "embeds#show"

  resources :discussions do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
