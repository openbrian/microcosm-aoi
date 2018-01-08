Feature: Learn about the Microcosm
  In order to learn about this microcosm
  as a vistitor
  I want to read their webpage

Background:
  Given There is a microcosm
  And the microcosm has a member "Brian DeRocher"
  And I am on the microcosm page

Scenario: Describe the microcosm
  Then I should see the microcosm name
  And I should see the microcosm number of members

Scenario: Show the list of users
  Then I should see "Brian DeRocher" in the list of members
