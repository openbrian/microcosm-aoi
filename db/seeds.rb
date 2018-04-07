Microcosm.create!([
  {name: "MappingDC", key: "mdc", members_num: 1, facebook: "mappingdc", twitter: "mappingdc", lat: 38.9, lon: -77.03, min_lat: 38.516, max_lat: 39.472, min_lon: -77.671, max_lon: -76.349}
])
Event.create!([
  {title: "Mappy Hour", moment: "2019-01-24 07:20:00", location: "Capitol City Brewing", description: "Join us for discussions of mapping.", microcosm_id: 1}
])
User.create!([
  {name: "Brian DeRocher", provider: nil, uid: nil},
  {name: "Steven Johnson", provider: nil, uid: nil},
  {name: "Andrew Wiseman", provider: nil, uid: nil}
])
Member.create!([
  {microcosm_id: 1, user_id: 2},
  {microcosm_id: 1, user_id: 3}
])
Organizer.create!([
  {microcosm_id: 1, user_id: 1}
])
