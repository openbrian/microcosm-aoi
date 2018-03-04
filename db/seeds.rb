Microcosm.create!([
  {name: "MappingDC", key: "mdc", members_num: 1, facebook: "mappingdc", twitter: "mappingdc", lat: 38.9, lon:-77.03}
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
Changeset.create!([
  { id: 56509251, user_id: 791438, created_at: "2018-02-20T04:01:53Z", min_lat: "38.7803076", min_lon: "-77.0765995", max_lat: "38.7808520", max_lon: "-77.0756858", closed_at: "2018-02-20T04:01:54Z", num_changes: 0}
])
