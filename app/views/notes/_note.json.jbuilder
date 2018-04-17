json.extract! note, :id, :user_id, :event_dt, :notify_dt, :description, :created_at, :updated_at
json.url note_url(note, format: :json)
