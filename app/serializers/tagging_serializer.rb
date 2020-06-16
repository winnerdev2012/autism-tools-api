class TaggingSerializer < ActiveModel::Serializer
  attributes :id, :board, :resource, :diet, :meal, :recipe, :document, :medication, :playlist, :schedule, :treatment, :user
end
