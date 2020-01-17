Rails.application.routes.draw do
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admin_users
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  # resources :colddata
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post "/login", to: "auth#login"
  post "/signup", to: "users#create"
  # get "/profile", to: "users#profile"
  post "/user/search", to: "users#index"
  put "/user/:id(.:format)", to: "users#update"
  delete "/user/:id(.:format)", to: "users#destroy"
end
