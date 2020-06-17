class TaggingSerializer < ActiveModel::Serializer
  attributes :id, :board_id, :resource_id, :diet_id, :meal_id, :recipe_id, :document_id, :medication_id, :playlist_id, :schedule_id, :treatment_id
end
