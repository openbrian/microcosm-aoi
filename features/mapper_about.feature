Feature: Learn about the Microcosm
  In order to learn about this microcosm
  as a mapper
  I want to read their webpage

Background:
  Given I have a microcosm
  And I am on the microcosm page

Scenario: Describe the microcosm
  Then I should see the microcosm name
  And I should see the microcosm number of members