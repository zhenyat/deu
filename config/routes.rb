Rails.application.routes.draw do
  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
    root 'home#index'                   # => http://localhost:3000/en  
    resources :genders, only: :index    # => http://localhost:3000/en/genders
    resources :numbers, only: :index
  end
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check   #=> http://localhost:3000/up
end
