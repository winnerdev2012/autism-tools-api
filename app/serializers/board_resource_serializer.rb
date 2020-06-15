class BoardResourceSerializer < ActiveModel::Serializer
  attributes :id, :board, :resource
  belongs_to :board
  belongs_to :resource
end
