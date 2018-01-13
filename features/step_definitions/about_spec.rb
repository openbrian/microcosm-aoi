
Given("there is a microcosm {string}") do |name|
  @the_microcosm = Microcosm.create!(:name => name, :key => name.downcase, :members_num => 353)
end

Given("I am on the microcosm {string} page") do |name|
  visit "/microcosms/" + name.downcase
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
