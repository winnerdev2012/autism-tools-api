class Event < ApplicationRecord
  validates :start_time, presence: true
  before_save :set_duration
  has_many :event_users
  has_many :users, through: :event_users

  def set_duration
    if self.end_time
      self.duration = (end_time - start_time).to_i
    else
      self.duration = 900000
    end
  end
end
