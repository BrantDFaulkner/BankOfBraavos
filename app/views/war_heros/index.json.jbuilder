json.array!(@war_heros) do |war_hero|
  json.extract! war_hero, :id, :participant_id, :description
  json.url war_hero_url(war_hero, format: :json)
end
