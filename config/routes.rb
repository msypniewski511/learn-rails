Rails.application.routes.draw do
  root to: 'visitors#new'
  resources :contacts, only: [:new, :create]
  post 'contact', to: 'contacts#process_form'
  get '/colekcja', to: 'visitors#colekcja'
end
