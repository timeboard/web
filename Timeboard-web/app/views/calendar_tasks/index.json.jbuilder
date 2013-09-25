json.array!(@calendar_tasks) do |calendar_task|
  json.extract! calendar_task, :user_id, :type, :item_class, :summary, :description, :url, :start_date, :end_date, :repeat_rule
  json.url calendar_task_url(calendar_task, format: :json)
end
