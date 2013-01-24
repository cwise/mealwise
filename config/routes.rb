Mealwise::Application.routes.draw do
  devise_for :users

  resources :meals
  resources :served_meals
  
  get '/home' => "home#index", :as => 'home'
  root :to => "meals#index"
end
