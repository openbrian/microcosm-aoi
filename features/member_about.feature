Feature: Learn about the Microcosm as a Member
  In order to learn about this microcosm
  as a member
  I want to read their webpage

Background:
  Given there is a microcosm "MappingDC"
  And the microcosm has a member "OpenBrian" with uid "791438" at provider "osm"
  And I sign in as "OpenBrian"
  And I am on the home page

@omniauth_test
Scenario: Show that the user is signed in
  Then I should see "Welcome OpenBrian"
