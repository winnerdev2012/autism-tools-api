class Document < ApplicationRecord
  belongs_to :user
  has_many :taggings
  has_many :tags, through: :taggings, source: :document
end
