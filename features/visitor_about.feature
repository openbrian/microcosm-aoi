Feature: Learn about the Microcosm
  In order to learn about this microcosm
  as a vistitor
  I want to read their webpage

Background:
  Given There is a microcosm

Scenario: Describe the microcosm
  And I am on the microcosm page
  Then I should see the microcosm name
  And I should see the microcosm number of members
