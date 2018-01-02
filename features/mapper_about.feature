Feature: Learn about the Microcosm
  In order to learn about this microcosm
  as a mapper
  I want to read their webpage

Background:
  Given I have a microcosm

Scenario: Describe the microcosm
  And I am on the microcosm page
  Then I should see the microcosm name
  And I should see the microcosm number of members

Scenario: Describe the microcosm by key
  And I am on the microcosm page by key
  Then I should see the microcosm name
  And I should see the microcosm number of members