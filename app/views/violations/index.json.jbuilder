json.array!(@violations) do |violation|
  json.extract! violation, :id, :violation_type_id, :particpant_id
  json.url violation_url(violation, format: :json)
end
