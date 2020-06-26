class Step < ApplicationRecord
  belongs_to :treatment
  belongs_to :medication, optional: true
  belongs_to :supplement, optional: true
  has_many :taggings
  has_many :tags, through: :taggings
end
