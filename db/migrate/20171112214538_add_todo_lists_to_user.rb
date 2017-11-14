class AddTodoListsToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :todo_lists, foreign_key: true
  end
end
