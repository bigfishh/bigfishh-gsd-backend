class Item < ApplicationRecord
  belongs_to :todo_list
  belongs_to :category
  delegate :user, to: :todo_list
end
