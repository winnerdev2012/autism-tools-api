class TaggingSerializer < ActiveModel::Serializer
  attributes :id, :board_id, :resource_id, :diet_id, :meal_id, :recipe_id, :document_id, :medication_id, :playlist_id, :schedule_id, :treatment_id
  belongs_to :board, optional: true
  belongs_to :resource, optional: true
  belongs_to :diet, optional: true
  belongs_to :meal, optional: true
  belongs_to :recipe, optional: true
  belongs_to :document, optional: true
  belongs_to :medication, optional: true
  belongs_to :playlist, optional: true
  belongs_to :schedule, optional: true
  belongs_to :treatment, optional: true
  belongs_to :user, optional: true
end
