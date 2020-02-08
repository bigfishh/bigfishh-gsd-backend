class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :password_digest, :bio, :img_url
  has_many :todo_lists
end
