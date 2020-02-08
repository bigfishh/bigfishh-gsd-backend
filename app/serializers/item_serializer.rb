class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :completed
  has_one :todo_list
  has_one :category
end
