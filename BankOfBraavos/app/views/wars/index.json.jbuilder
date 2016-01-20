json.array!(@wars) do |war|
  json.extract! war, :id, :opponent, :result
  json.url war_url(war, format: :json)
end
