Rails.application.routes.draw do
  devise_for :users
  namespace :api do
    namespace :v1 do
      resources :boards
      resources :resources
      resources :board_resources
      resources :tags
      resources :taggings
      resources :diets
      resources :meals
      resources :diet_meals
      resources :recipes
      resources :users
      resources :documents
      resources :playlists
      resources :playlist_resources
      resources :events
      resources :event_users
      resources :treatments
      resources :steps
      resources :medications
      resources :supplements
      resources :histories
      get 'sessions', to: 'sessions#create'
      delete 'sessions', to: 'sessions#destroy'
    end
  end
  root 'api/v1/users#index'
end
