class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :completed
  belongs_to :category
end
