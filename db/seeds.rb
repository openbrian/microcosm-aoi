m1, = Microcosm.create!([
  {name: "MappingDC", key: "mdc2", members_count: 0, facebook: "mappingdc", twitter: "mappingdc", lat: 38.9, lon: -77.03, min_lat: 38.516 * 10**7, max_lat: 39.472 * 10**7, min_lon: -77.671 * 10**7, max_lon: -76.349 * 10**7, description: 'MappingDC is a group organized around improving the quality of OpenStreetMap in and around Washington DC. We meet periodically for on-the-street mapping and mappy hours. See http://mappingdc.org for more information.'}
])
e1, = Event.create!([
  {title: "Mappy Hour", moment: "2019-01-24 07:20:00", location: "Capitol City Brewing", description: "Join us for discussions of mapping.", microcosm_id: m1.id}
])
u1, u2, u3 = User.create!([
  {name: "OpenBrian", provider: "osm", uid: 791438, created_at: '2012-09-02 09:47:29'},
  {name: "seohnson", provider: "osm", uid: 25398, created_at: '2008-02-03 21:07:53'},
  {name: "Marion Barry", provider: "osm", uid: 408282, created_at: '2011-06-13 10:51:16'}
])
Member.create!([
  {microcosm_id: m1.id, user_id: u2.id},
  {microcosm_id: m1.id, user_id: u3.id}
])
Organizer.create!([
  {microcosm_id: m1.id, user_id: u1.id}
])
e1, = Editor.create!([
  {user_id: 791438, display_name: "OpenBrian"}
])
MicrocosmChangeset.create!([
  {microcosm_id: m1.id, changeset_id: 56625888, user_id: e1.id, review_num: 0}
])
