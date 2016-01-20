json.array!(@violation_descriptions) do |violation_description|
  json.extract! violation_description, :id, :violation_id, :content
  json.url violation_description_url(violation_description, format: :json)
end
