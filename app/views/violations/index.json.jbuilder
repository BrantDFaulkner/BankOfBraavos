json.array!(@violations) do |violation|
  json.extract! violation, :id, :member_id, :desciption
  json.url violation_url(violation, format: :json)
end
