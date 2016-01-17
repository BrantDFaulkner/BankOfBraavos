json.array!(@members) do |member|
  json.extract! member, :id, :user_name, :status
  json.url member_url(member, format: :json)
end
