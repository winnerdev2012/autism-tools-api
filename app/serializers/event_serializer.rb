class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_time, :end_time, :duration
  has_many :event_users
  has_many :users, through: :event_users
end
