json.array!(@violation_types) do |violation_type|
  json.extract! violation_type, :id, :description
  json.url violation_type_url(violation_type, format: :json)
end
