Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :resources
      resources :boards
      resources :board_resources
    end
  end  
end
