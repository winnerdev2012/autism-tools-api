class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions
end
