json.extract! timeline, :id, :user_id, :name, :start_time, :end_time, :created_at, :updated_at
json.url timeline_url(timeline, format: :json)
