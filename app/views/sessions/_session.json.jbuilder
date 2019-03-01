json.extract! session, :id, :is_admin, :user_id, :user_name, :created_at, :updated_at
json.url session_url(session, format: :json)
