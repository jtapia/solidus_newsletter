Spree::Core::Engine.routes.draw do
  namespace :admin do
    get '/newsletters/edit' => 'newsletters#edit'
    put '/newsletters/update' => 'newsletters#update'
  end

  resources :newsletters, only: [:create]
end
