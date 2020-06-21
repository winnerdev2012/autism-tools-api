class Event < ApplicationRecord
  validates :start_time, presence: true
  validate :start_time_valid?

  before_save :set_duration
  has_many :event_users
  has_many :users, through: :event_users

  DEFAULT_DURATION = 300 # 300 seconds = 5 minutes

  def set_duration
    if self.end_time
      self.duration = (end_time - start_time).to_i
    else
      self.duration = DEFAULT_DURATION
      self.end_time = self.start_time + self.duration
    end
  end

  def start_time_valid?
    if end_time.present? && start_time > end_time
      errors.add(:start_time, "start_time must be BEFORE end_time")
    end
  end
end
