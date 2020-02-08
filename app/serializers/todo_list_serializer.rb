class TodoListSerializer < ActiveModel::Serializer
  attributes :id, :todo_date
  has_many :items

  # def show_items
  #   puts "#{self.items}"
  # end

end
