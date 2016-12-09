Rails.application.routes.draw do
  devise_for :users
  
  resources :gifs
  
  #root 'welcome#index'
  #root 'gifs#index'
  root :to => redirect('/gifs')
  
  get 'tags/:tag', to:'gifs#index', as: "tag"
end
