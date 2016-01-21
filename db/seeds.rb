# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ranks = [
  "Leader",
  "Co-Leader",
  "Elder",
  "Member"
]

activity_statuses = [
  "Active",
  "Inactive",
  "TempKicked",
  "Banned"
]

war_results = [
  "TBD",
  "Win",
  "Loss",
  "Draw"
]

violation_types = [
  "Zero war attacks.",
  "Only one war attack.",
  "Attacked severely inappropriate enemy base.",
  "Attacked with severely inappropriate army composition."
]

members = [
  ["Blunderbuss",1,1],
  ["Andrew",3,1],
  ["ir2good4u",2,1],
  ["Ristafer",4,1],
  ["janna",4,1],
  ["Rob",2,1],
  ["adarsh",4,1],
  ["Bandit",2,1],
  ["Kevin",2,1],
  ["locomunchkin",2,1],
  ["Eberhard",3,1],
  ["DaGeneral",3,1],
  ["Podman",3,1],
  ["Bes",3,1],
  ["RTI",4,1],
  ["J. the Great",3,1],
  ["Wonder Woman!",2,1],
  ["Blade",3,1],
  ["omgmakeme",4,1],
  ["ScareBaer",4,1],
  ["Entropy",2,1],
  ["Jon",3,1],
  ["Alyan Bukhari",4,1],
  ["Rolsen",4,1],
  ["bluntnasty",4,1],
  ["kirker",3,1],
  ["Reboot",3,1],
  ["fd66",3,1],
  ["soham99",4,1],
  ["MandyWatts",3,1],
  ["bschrad",4,1],
  ["joejoe92",4,1],
  ["brecker007",2,1],
  ["priyanshu",4,1],
  ["Blackhawk",3,1],
  ["steyn",4,1],
  ["jasmine",4,1],
  ["NuhaNokka",4,1],
  ["AZAD",4,1],
  ["cjwebs178",4,1],
  ["dnyan",4,1],
  ["Space Pickle",4,1],
  ["Undefined Jon",4,1],
  ["ir2good4u23",4,1],
  ["Tyler",4,1]
]





ranks.each do |title|
  Rank.create!(title: title)
end

activity_statuses.each do |status|
  ActivityStatus.create!(status: status)
end

war_results.each do |result|
  WarResult.create!(result: result)
end

members.each do |member|
  Member.create!(
    user_name: member[0],
    rank_id: member[1],
    activity_status_id: member[2]
    )
end

violation_types.each do |type|
  ViolationType.create!(description: type)
end

# User.create!(email: "test@test.com", password: "password")



