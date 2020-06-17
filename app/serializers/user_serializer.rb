class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :middle_name, :nick_name, :email, :phone, :address1, :address2, :address3, :address_city, :address_state, :address_zip, :age, :weight, :height, :eyes_color, :hair_color, :description, :diagnosis
  has_many :documents
  has_many :taggings
  has_many :tags, through: :taggings, source: :user
end
