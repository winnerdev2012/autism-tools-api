class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :board_resources, :taggings
  has_many :board_resources
  has_many :resources, through: :board_resources
  has_many :taggings
  has_many :tags, through: :taggings, source: :board
end
