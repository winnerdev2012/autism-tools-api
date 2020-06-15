class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :format, :location
  has_many :board_resources
  has_many :boards, through: :board_resource
end
