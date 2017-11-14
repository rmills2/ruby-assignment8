class AddTodoListToTodoItem < ActiveRecord::Migration[5.1]
  def change
    add_column :todo_items, :todoList, :reference
  end
end
