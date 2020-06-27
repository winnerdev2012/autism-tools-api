class TaggingSerializer < ActiveModel::Serializer
  attributes :id, :tag_id, :board_id, :resource_id, :diet_id, :meal_id, :recipe_id, :document_id, :treatment_id, :step_id, :medication_id, :supplement_id, :playlist_id, :event_id
  belongs_to :tag
  belongs_to :board, optional: true
  belongs_to :resource, optional: true
  belongs_to :diet, optional: true
  belongs_to :meal, optional: true
  belongs_to :recipe, optional: true
  belongs_to :document, optional: true
  belongs_to :treatment, optional: true
  belongs_to :step, optional: true
  belongs_to :medication, optional: true
  belongs_to :supplement, optional: true
  belongs_to :playlist, optional: true
  belongs_to :event, optional: true
end
