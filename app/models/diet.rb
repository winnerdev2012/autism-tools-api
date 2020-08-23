class Diet < ApplicationRecord
  has_many :diet_meals, dependent: :destroy
  has_many :meals, through: :diet_meals
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings, source: :diet
end
