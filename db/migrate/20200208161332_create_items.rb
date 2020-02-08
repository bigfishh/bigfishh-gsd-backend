class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.belongs_to :todo_list, null: false, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.string :name
      t.text :description
      t.boolean :completed

      t.timestamps
    end
  end
end
