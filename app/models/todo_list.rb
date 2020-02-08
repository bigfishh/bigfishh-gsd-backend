class TodoList < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  has_many :categories, through: :items

    def show_items
      self.items
    end

end
