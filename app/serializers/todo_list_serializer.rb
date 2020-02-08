class TodoListSerializer < ActiveModel::Serializer
  attributes :id, :todo_date
  has_one :user
end
