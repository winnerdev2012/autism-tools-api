class Api::V1::BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  # has_many :board_resources
  # has_many :boards, through: :board_resources
  # has_many :board_tags
  # has_many :tags, through: :board_tags
end
