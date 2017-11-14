class AddTodoListIdToTodoItem < ActiveRecord::Migration[5.1]
  def change
    add_column :todo_items, :todo_list_id, :integer
  end
end
