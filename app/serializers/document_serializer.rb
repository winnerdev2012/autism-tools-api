class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions, :format, :location, :user_id
  belongs_to :user
end
