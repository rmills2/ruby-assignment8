class AddTodoListToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :todoList, foreign_key: true
  end
end
