json.array!(@participants) do |participant|
  json.extract! participant, :id, :member_id, :war_id
  json.url participant_url(participant, format: :json)
end
