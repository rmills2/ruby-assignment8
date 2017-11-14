json.extract! todo_item, :id, :due_date, :task_title, :description, :created_at, :updated_at, :done
json.url todo_item_url(todo_item, format: :json)
