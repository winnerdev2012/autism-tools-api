class PlaylistResourceSerializer < ActiveModel::Serializer
  attributes :id, :playlist_id, :resource_id
  belongs_to :playlist
  belongs_to :resource
end
