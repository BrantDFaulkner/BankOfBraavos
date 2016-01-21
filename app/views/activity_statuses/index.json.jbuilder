json.array!(@activity_statuses) do |activity_status|
  json.extract! activity_status, :id, :status
  json.url activity_status_url(activity_status, format: :json)
end
