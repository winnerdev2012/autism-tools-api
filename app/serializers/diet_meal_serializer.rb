class DietMealSerializer < ActiveModel::Serializer
  attributes :id, :diet_id, :meal_id
  belongs_to :diet
  belongs_to :meal
end
