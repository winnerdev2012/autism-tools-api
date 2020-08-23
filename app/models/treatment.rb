class Treatment < ApplicationRecord
  has_many :steps, dependent: :destroy
  has_many :medications, through: :steps
  has_many :supplements, through: :steps
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
end
