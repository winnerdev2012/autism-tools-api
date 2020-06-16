class Meal < ApplicationRecord
  has_many :diet_meals
  has_many :diets, through: :diet_meals
end
