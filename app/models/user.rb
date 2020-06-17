class User < ApplicationRecord
  has_many :documents
  has_many :taggings
  has_many :tags, through: :taggings, source: :user
end
