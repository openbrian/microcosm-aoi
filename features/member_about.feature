Feature: Learn about the Microcosm as a Member
  In order to learn about this microcosm
  as a member
  I want to read their webpage

Background:
  Given there is a microcosm "MappingDC"
  And the microcosm has a member "OpenBrian" with uid "791438" at provider "osm"
  And the microcosm has an organizer "Steven Johnson" with uid "25398"
  And the microcosm has a changeset "56625888" by "OpenBrian" "791438"
  And I sign in as "OpenBrian"
  And I am on the home page

@omniauth_test
Scenario: Show that the user is signed in
  Then I should see "Welcome OpenBrian"

@omniauth_test
Scenario: See a list of changsets
  And I am on the microcosm "mappingdc" page
  And I click "Changesets"
  Then I should see "56625888"

@omniauth_test
Scenario: Show the list of organizers
  And I am on the microcosm "mappingdc" page
  And I click "Steven J"
  Then I should see "Steven Johnson" in the list of organizers of this microcosm

