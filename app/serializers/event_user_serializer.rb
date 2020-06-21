class EventUserSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :event_id
  belongs_to :event
  belongs_to :user
end
