class AddTagToTodoItem < ActiveRecord::Migration[5.1]
  def change
    add_column :todo_items, :tag, :Tag
  end
end
