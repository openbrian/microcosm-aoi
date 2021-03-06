Feature: Learn about the Microcosm
  In order to learn about this microcosm
  as a vistitor
  I want to read their webpage

Background:
  Given there is a microcosm "MappingDC"
  And the microcosm has a member "Brian DeRocher" with uid "791438" at provider "osm"
  And the microcosm has an organizer "Steven Johnson" with uid "25398"
  And the microcosm has a "Bus Routes" event
  And the microcosm has facebook page "mappingdc"
  And the microcosm has twitter account "mappingdc"
  And I am on the microcosm "MappingDC" page

Scenario: Describe the microcosm
  Then I should see the microcosm "MappingDC" name
  And I should see the microcosm has "1" members

Scenario: Show the list of users
  Then I should see "Brian DeRocher" in the list of members

Scenario: Show the list of organizers
  Then I should see "Steven J"

Scenario: Show the list of events
  Then I should see the "Bus Routes" event in the list of events

Scenario: Show the facebook link
  Then I should see the "Facebook" link to "https://facebook.com/groups/mappingdc"

Scenario: Show the twitter link
  Then I should see the "Twitter" link to "https://twitter.com/mappingdc"

@javascript
Scenario: Show a map
  Then I should see a map of the microcosm centered at their AOI

Scenario: Should not see changesets
  And I click "Changesets"
  Then I should see "new session"
