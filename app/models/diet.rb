class Diet < ApplicationRecord
  has_many :diet_meals
  has_many :meals, through: :diet_meals
  # has_many :recipes
end
