class MealFoodsController < ApplicationController
  def no_food_meal
    render json: { 'No Food Meal': Meal.no_food_meal }
  end

  def max_foods
    render json: Food.max_foods
  end

  def other_food
    render json: Food.other_foods
  end
end
