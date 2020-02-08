class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :bio, :img_url
  has_many :todo_lists
end
