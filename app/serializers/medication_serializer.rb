class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :taggings
  has_many :tags, through: :taggings
end
