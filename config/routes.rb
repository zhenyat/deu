Rails.application.routes.draw do
  scope "/:locale", locale: /#{I18n.available_locales.join("|")}/ do
    root 'home#index'
    get "/first", to: "dummy#first", as: :first  # ==> http://localhost:3000/en/first
    get "/second", to: "dummy#second", as: :second
    get "/third", to: "dummy#third", as: :third
    # get 'dummy/first', as: :first      # ==> http://localhost:3000/en/dummy/first
    # get 'dummy/second', as: :second
    # get 'dummy/third', as: :third
  end
  
  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end
