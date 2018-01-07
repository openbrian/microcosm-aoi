
Given("There is a microcosm") do
  Microcosm.create!(:name => "MappingDC", :key => "mappingdc", :members_num => 353)
end

Given("I am on the microcosm page") do
  visit "/microcosms/1"
end

Given("I am on the microcosm page by key") do
  visit "/microcosms/mappingdc"
end

Then("I should see the microcosm name") do
  expect(page).to have_content('MappingDC')
end

Then("I should see the microcosm number of members") do
  expect(page).to have_content('353')
end
