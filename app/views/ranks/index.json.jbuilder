json.array!(@ranks) do |rank|
  json.extract! rank, :id, :title
  json.url rank_url(rank, format: :json)
end
