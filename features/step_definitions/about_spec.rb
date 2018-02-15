require 'capybara/poltergeist'
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, :inspector => true)
end
Capybara.javascript_driver = :poltergeist


Given("there is a microcosm {string}") do |name|
  @the_microcosm = Microcosm.create!(:name => name, :key => name.downcase, :members_num => 353, lat: 38.9, lon:-77.03)
end

Given("the microcosm has a member {string}") do |name|
  @the_microcosm.members.create(user: User.create(name: name))
# visit "/users/new"
# fill_in "Name", with: "Brian DeRocher"
# click_button
# visit "/members/new"
# fill_in "Microcosm", with: '1'
# fill_in "User", with: '1'
# click_button
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

Then("I should see a map of the microcosm AOI") do
  expect(page).to have_css('#Map')
# expect(page).to have_css('.leaflet-container')
  coords = page.evaluate_script("function(){ setTimeout( function() { return window.map.getCenter(); }, 5000 ); }()")
  print 'coords'
  print coords
# Capybara.use_default_driver
end
