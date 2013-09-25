json.array!(@calendar_events) do |calendar_event|
  json.extract! calendar_event, :user_id, :type, :item_class, :summary, :description, :url, :start_date, :end_date, :repeat_rule
  json.url calendar_event_url(calendar_event, format: :json)
end
