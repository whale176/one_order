class Food < ApplicationRecord
  has_many :meal_foods
  has_many :meals, through: :meal_foods

  def self.other_foods
    other_foods = {}
    Food.all.each do |food|
      meal_ids = food.meals.ids
      all_food_names = Food.includes(:meal_foods).where(meal_foods: {meal_id: meal_ids}).map(&:name)
      other_foods[food.name] = all_food_names.reject {|f| f == food.name}
    end
    other_foods
  end

  def self.max_foods
    joins(:meals).group(:name).count
  end
end
