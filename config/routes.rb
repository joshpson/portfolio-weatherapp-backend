Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, :locations
      get 'search_cities' => 'locations#search'
      post 'user_token' => 'user_token#create'
      get '/user', to: 'users#show_user'
    end
  end

end
