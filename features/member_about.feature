Feature: Learn about the Microcosm as a Member
  In order to learn about this microcosm
  as a member
  I want to read their webpage

Background:
  Given there is a microcosm "MappingDC"
  And the microcosm has a member "OpenBrian" with uid "791438" at provider "osm"
  And I sign in as "OpenBrian"

@omniauth_test
Scenario: Show that the user is signed in
  And I am on the home page
  Then I should see "Welcome OpenBrian"


@omniauth_test
Scenario: Authenticed user should see a changeset
  And I am on the microcosm "MappingDC" page
  Then I should see changeset "56509251" in the list of changesets
