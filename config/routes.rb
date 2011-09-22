Mealwise::Application.routes.draw do
  get "home/index"

  devise_for :users

  resources :meals
  get '/home' => "home#index", :as => 'home'
  root :to => "meals#index"
end
