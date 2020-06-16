class DietSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions
  # has_many :meals
  # has_many :recipes
end
