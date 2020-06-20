class Tagging < ApplicationRecord
  validate :has_one_model_id?

  belongs_to :tag
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

  def has_one_model_id?
    self.attributes.filter { |a| !a.nil? }.count == 3
  end
end
