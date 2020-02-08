class Category < ApplicationRecord
    has_many :items, dependent: :destroy
    has_many :todo_lists, through: :items
end
