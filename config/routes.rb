Rails.application.routes.draw do
  resources :search_categories do 
    resources :search_containers
  end

  root to: 'search_categories#index'
end
