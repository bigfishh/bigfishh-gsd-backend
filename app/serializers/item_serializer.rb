class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :completed

end
