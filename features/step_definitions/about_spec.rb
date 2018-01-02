
Given("I have a microcosm") do
  Microcosm.create!(:name => "MappingDC", :key => "mappingdc", :members_num => 353)
end

Given("I am on the microcosm page") do
  visit "/microcosms/1"
end

Then("I should see the microcosm name") do
  expect(page).to have_content('MappingDC')
end

Then("I should see the microcosm number of members") do
  expect(page).to have_content('353')
end
