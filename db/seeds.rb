
violation_descriptions = [
  "Did not attack during war.",
  "Only used one war attack.",
  "Attacked severely inappropriate base.",
  "Attacked without legitimate war army."
]


members = [
  ["Blunderbuss", "leader", "active"],
  ["Andrew", "elder", "active"],
  ["iR2good4u", "coleader", "active"],
  ["Ristafer", "elder", "active"],
  ["Rob", "coleader", "active"],
  ["adaRSH", "member", "active"],
  ["jaNNa", "member", "active"],
  ["Bandit", "coleader", "active"],
  ["kevin", "coleader", "active"],
  ["locomunchkin", "coleader", "active"],
  ["DaGeneral", "coleader", "active"],
  ["Podman", "elder", "active"],
  ["J. The Great", "elder", "active"],
  ["Bes", "elder", "active"],
  ["Eberhard", "elder", "active"],
  ["RTI", "member", "active"],
  ["Blade", "elder", "active"],
  ["WonderWoman!", "coleader", "active"],
  ["kirker", "elder", "active"],
  ["omgmakeme", "member", "active"],
  ["ScareBaer", "member", "active"],
  ["Jon", "member", "active"],
  ["Entropy", "coleader", "active"],
  ["reboot", "elder", "active"],
  ["MandyWatts", "elder", "active"],
  ["bluntnasty", "elder", "active"],
  ["rolsen", "member", "active"],
  ["bschrad", "member", "active"],
  ["fd66", "elder", "active"],
  ["ALAN$", "member", "active"],
  ["brecker007", "coleader", "active"],
  ["joejoe92", "member", "active"],
  ["Blackhawk", "elder", "active"],
  ["priyanshu", "member", "active"],
  ["dnyan", "member", "active"],
  ["jasmine", "member", "active"],
  ["cjwebs178", "member", "active"],
  ["AZAD", "member", "active"],
  ["Space Pickle", "member", "active"],
  ["UndefinedJon", "member", "active"],
  ["ir2good4u23", "member", "active"],
  ["Tyler", "member", "active"]
]

members.each do |member|
  Member.create!(
    user_name: member[0],
    rank: member[1],
    status: member[2])
end

violation_descriptions.each do |description|
  ViolationDescription.create!(
    content: description
    )
end

User.create!(
  email: "brant@gmail.com",
  password: "password",
  permission: "admin"
  )






