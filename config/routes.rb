Rails.application.routes.draw do
  
 
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'welcome#index'
  get '/dash', to: 'welcome#dash'
  

  resources :virtues
  resources :users
  resources :items
  
end