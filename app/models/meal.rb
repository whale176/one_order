class Meal < ApplicationRecord
  has_many :meal_foods
  has_many :foods, through: :meal_foods

  def self.no_food_meal
    includes(:meal_foods).where(meal_foods: {food_id: nil}).map(&:name)
  end
end
