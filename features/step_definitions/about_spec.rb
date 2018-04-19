require 'capybara/poltergeist'
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, :inspector => true)
end
Capybara.javascript_driver = :poltergeist

# The lines like "The microcosm HAS..." are not behavior driven.

Given("there is a microcosm {string}") do |name|
  @the_microcosm = Microcosm.create!(:name => name, :key => name.downcase, :members_num => 353, lat: 38.9, lon:-77.03, min_lat: 38.516 * 10**7, max_lat: 39.472 * 10**7, min_lon: -77.671 * 10**7, max_lon: -76.349 * 10**7)
end


Given("the microcosm has a member {string}") do |name|
  @the_microcosm.members.create(user: User.create(name: name))
end

Given("the microcosm has a member {string} with uid {string} at provider {string}") do |name, uid, provider|
  @the_microcosm.members.create(user: User.create(name: name, uid: uid, provider: provider))
# visit "/users/new"
# fill_in "Name", with: "Brian DeRocher"
# click_button
# visit "/members/new"
# fill_in "Microcosm", with: '1'
# fill_in "User", with: '1'
# click_button
end


Given("the microcosm has a changeset {string} by {string} {string}") do |chid, display_name, user_id|
  ed = Editor.create!(display_name: display_name, user_id: user_id)
  @the_microcosm.microcosm_changesets.create(changeset_id: chid, review_num: 0, user_id: user_id, editor_id: ed.id)
end


Given("the microcosm has an organizer {string}") do |name|
  @the_microcosm.organizers.create(user: User.create(name: name))
end

Given("the microcosm has a {string} event") do |title|
  @the_microcosm.events.create(title: title)
end

Given("the microcosm has facebook page {string}") do |fb|
  @the_microcosm.facebook = fb
  @the_microcosm.save
end

Given("the microcosm has twitter account {string}") do |acct|
  @the_microcosm.twitter = acct
  @the_microcosm.save
end


Given("I am on the microcosm {string} page") do |name|
  visit "/microcosms/" + name.downcase
end

Given("I am on the home page") do
  visit "/"
end


Given("I click {string}") do |link|
  click_link link
end


Given("I sign in as {string}") do |name|
  @the_user = User.find_by(name: name)
  OmniAuth.config.add_mock(:osm, {:uid => @the_user.uid, :provider => @the_user.provider, :info => {:name => name}})
  visit "/"
  click_link "Sign in"
  click_link "Sign in with OSM"
end


Then("I should see the microcosm {string} name") do |name|
  expect(page).to have_content(name)
end

Then("I should see the microcosm number of members") do
  expect(page).to have_content('353')
end

Then("I should see {string} in the list of members") do |name|
  within '#Members' do
    expect(page).to have_content('Members')
    expect(page).to have_content(name)
  end
end

Then("I should see the {string} in this list of organizers of the microcosm") do |name|
  within '#Organizers' do
    expect(page).to have_content('Organizers')
    expect(page).to have_content(name)
  end
end

Then("I should see the {string} event in the list of events") do |title|
  within '#Events' do
    expect(page).to have_content('Events')
    expect(page).to have_content(title)
  end
end

Then("I should see the {string} link to {string}") do |title, href|
  expect(page).to have_link(title, :href => href)
end

Then("I should see a map of the microcosm centered at their AOI") do
  expect(page).to have_css('#Map')
  expect(page).to have_css('.leaflet-container')
  coords = page.evaluate_script("window.map.getCenter()")
  expect(coords['lat']).to eq(@the_microcosm.lat)
  expect(coords['lng']).to eq(@the_microcosm.lon)
end

Then("I should see {string}") do |msg|
  expect(page).to have_content(msg)
end
