class Item < ApplicationRecord
  belongs_to :todo_list
  belongs_to :category
end
