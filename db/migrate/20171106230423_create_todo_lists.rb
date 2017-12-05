class CreateTodoLists < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_lists do |t|
      t.string :list_name
      t.string :list_due_date

      t.timestamps
    end
  end
end
