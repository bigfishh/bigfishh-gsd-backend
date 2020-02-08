class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :password_digest, :bio, :img_url
end
