class CreateTodoItems < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_items do |t|
      t.string :due_date
      t.string :task_title
      t.string :description

      t.timestamps
    end
  end
end
