class AddDoneToTodoItem < ActiveRecord::Migration[5.1]
  def change
    add_column :todo_items, :done, :boolean
  end
end
