json.array!(@war_results) do |war_result|
  json.extract! war_result, :id, :result
  json.url war_result_url(war_result, format: :json)
end
