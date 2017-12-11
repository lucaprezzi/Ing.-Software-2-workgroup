Rails.application.routes.draw do
  get 'static_pages/home'

  get 'static_pages/impostazioni'

  root "static_pages#home"
  get 'home', to: 'static_pages#home'
  get 'impostazioni', to: 'static_pages#impostazioni'

    get 'settings', to: 'static_pages#impostazioni'

    get 'settings/:id', to: 'static_pages#impostazioni', as: 'id'

    get 'performances/no_invoiced/:id_p', to: 'performances#index', as: "id_p"

    get 'static_pages', to: 'static_pages#change'

  resources :invoices
  resources :performances
  resources :rates
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
