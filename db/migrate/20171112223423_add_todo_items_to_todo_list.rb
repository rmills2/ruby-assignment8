class AddTodoItemsToTodoList < ActiveRecord::Migration[5.1]
  def change
    add_reference :todo_lists, :todoItem, foreign_key: true
  end
end
