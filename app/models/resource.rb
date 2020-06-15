class Resource < ApplicationRecord
  has_many :board_resources
  has_many :boards, through: :board_resources
end
