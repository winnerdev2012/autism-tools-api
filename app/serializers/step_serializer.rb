class StepSerializer < ActiveModel::Serializer
  attributes :id, :treatment_id, :step_number, :name, :description, :instructions, :medication_id, :supplement_id, :dose_qty, :dose_unit, :dose_description, :dose_start, :dose_end
  belongs_to :treatment
  belongs_to :medication, optional: true
  belongs_to :supplement, optional: true
  has_many :taggings
  has_many :tags, through: :taggings
end
