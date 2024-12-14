Rails.application.routes.draw do
  get "sesiones/new"
  resources :usuarios
  get "home/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"


  # Define your application routes here
  resources :productos

  get "registro" => "usuarios#new", as: :registro


  get "login" => "sesiones#new", as: :login
  post "login" => "sesiones#create"
  get "logout" => "sesiones#destroy", as: :logout

  resources :ventas


  #filtrado de productos por su categoria 
  resources :productos do
    collection do
      get 'filtrar/:categoria', to: 'productos#filtrar', as: 'filtrar_categoria'
    end
  end


  get '/productos/:id/precio', to: 'productos#precio'

  resources :ventas
  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end
