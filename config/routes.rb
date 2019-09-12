Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  get '/no_food_meal', to: 'meal_foods#no_food_meal'
  get '/max_foods', to: 'meal_foods#max_foods'
  get '/other_food', to: 'meal_foods#other_food'
end
