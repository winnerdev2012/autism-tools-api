class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :instructions, :format, :location, :user_id
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings, source: :document
end
