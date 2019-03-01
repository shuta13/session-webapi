json.array! @session_data do |session_data|
  json.id session_data.is_admin
  json.name session_data.user_id
  json.mailaddrr session_data.user_name
end
