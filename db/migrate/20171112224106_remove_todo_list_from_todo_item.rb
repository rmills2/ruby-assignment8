class RemoveTodoListFromTodoItem < ActiveRecord::Migration[5.1]
  def change
    remove_column :todo_items, :todo_list, :TodoList
  end
end
