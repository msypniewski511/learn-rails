Rails.application.routes.draw do
  root to: 'visitors#new'
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  post 'contact', to: 'contacts#process_form'
  get '/colekcja', to: 'visitors#colekcja'
  get '/show_spreadsheet', to: 'contacts#show'
end
