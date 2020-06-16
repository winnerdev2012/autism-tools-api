class MealSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  # has_many :diet_meals
  # has_many :diets, through: :diet_meals
end
