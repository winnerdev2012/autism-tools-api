class TreatmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :steps
  # has_many :medications
  # has_many :supplements
  has_many :taggings
  has_many :tags, through: :taggings
end
