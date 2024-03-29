Rails.application.routes.draw do
  resources :projects
  resources :games
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end
  # Defines the root path route ("/")
  root "games#index"
  get "sidebar/a", to: "sidebar#a"
  get "sidebar/b", to: "sidebar#b"
  get "sidebar/c", to: "sidebar#c"
end
