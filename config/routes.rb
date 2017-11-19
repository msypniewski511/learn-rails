Rails.application.routes.draw do
  root to: 'visitors#new'
  get '/colekcja', to: 'visitors#colekcja'
end
