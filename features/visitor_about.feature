Feature: Learn about the Microcosm
  In order to learn about this microcosm
  as a vistitor
  I want to read their webpage

Background:
  Given there is a microcosm "MappingDC"
  And the microcosm has a member "Brian DeRocher"
  And the microcosm has an organizer "Steven Johnson"
  And the microcosm has a "Bus Routes" event
  And the microcosm has facebook page "mappingdc"
  And the microcosm has twitter account "mappingdc"
  And I am on the microcosm "MappingDC" page

Scenario: Describe the microcosm
  Then I should see the microcosm "MappingDC" name
  And I should see the microcosm number of members

Scenario: Show the list of users
  Then I should see "Brian DeRocher" in the list of members

Scenario: Show the list of organizers
  Then I should see the "Steven Johnson" in this list of organizers of the microcosm

Scenario: Show the list of events
  Then I should see the "Bus Routes" event in the list of events

Scenario: Show the facebook link
  Then I should see the "Facebook" link to "https://facebook.com/groups/mappingdc"

Scenario: Show the twitter link
  Then I should see the "Twitter" link to "https://twitter.com/mappingdc"
