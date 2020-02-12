class TodoListSerializer < ActiveModel::Serializer
  attributes :id, :todo_date, :user
  has_many :items

  def user 
    # byebug
    self.object.user.username
  end
end
