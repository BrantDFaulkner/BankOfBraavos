json.array!(@members) do |member|
  json.extract! member, :id, :user_name, :rank_id, :status_id
  json.url member_url(member, format: :json)
end
