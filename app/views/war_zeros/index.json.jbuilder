json.array!(@war_zeros) do |war_zero|
  json.extract! war_zero, :id, :war_id, :participant_id, :reason
  json.url war_zero_url(war_zero, format: :json)
end
