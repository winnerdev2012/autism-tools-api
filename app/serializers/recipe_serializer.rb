class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions
  has_many :taggings
  has_many :tags, through: :taggings, source: :recipe
end
