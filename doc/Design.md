# Microcosm

Micrososm is a website that supports the activities of OpenStreetMap local user groups.  A microcosm exists for a city.

Each group A user may have an account on multiple microcosms.

Not a single local group because

* software version updates
* some features may apply to users across multiple microcosms
* This may be integrated with OSM one day

## Sample URLs

> http://mappingdc.org/microcosm

> http://openstreetmap.us/microcosm/mappingdc

> http://openstreetmap.org/microcosm/paris

# Users

* Visitor - Someone who is interested in mapping, but not a member of a microcosm.

* Member - Primary user is a mapper who belongs to the microcosm.  The mapper goes to events, does street level mapping, edits the map in this area.

* Organizer - Secondary user is the organizers/team of the microcosm.

# Features

## As a Visitor

### About the microcosm

- [x] See description of the microcosm
- [x] See the members of the microcosm
- [x] See links to facebook and twitter
- [x] See a map of the area
- [ ] See links to members OSM wiki, OSM help, OSM Forum, GitHub, Mapillary, HOT OSM, and Twitter accounts if they exist.
- [ ] See what the microcosm is working on
- [ ] See what's new in the microcosm: editing activity, project activity
- [ ] See feed from twitter

### About the microcosm events

- [x] See upcoming events
- [x] See past events

### About the microcosm projects

- [ ] See the projects of the microcosm

## As a Member

### About the microcosm

- [ ] See details about other members

### About the member

- [ ] See Notes on the map that need resolution
- [ ] See their profile
- [ ] See their upcoming events
- [ ] See their past events
- [ ] See their progress
- [ ] See where they have mapped
- [ ] See their friends
- [ ] Share that they belong to a Local Chapter
- [ ] Add friends (use OSM profile friends)

### About events

- [ ] Propose a new event
- [ ] RSVP for an event

### About projects

- [ ] Propose a new project
- [ ] Elect to work on a project
- [ ] Work on a mapping task (task manager, local project)

### Other

## As an Organizer

### About the microcosm

- [ ] Manage description
- [ ] Identify sister microcosms

### Events

- [ ] Organize an event
- [ ] Generate Field Papers (Survey Papers)

### Membership

- [ ] Manage members
- [ ] Send a message to members
- [ ] Get notified about first time mappers in the area (https://github.com/cliffordsnow/newUsers)
- [ ] Invite people to join the microcosm

### Quality Assurance

- [ ] Measure the completeness of coverage
- [ ] Organize feeds (e.g. city bike station locations)
- [ ] Measure quality assurance

## As an admin

- [ ] Periodically scan the wiki for new user groups and local chapters (https://github.com/osmlab/localgroups/blob/master/osmgroups.geojson)

# QA

* https://wiki.openstreetmap.org/wiki/Keep_Right
* https://www.keepright.at/report_map.php?zoom=12&lat=39.95356&lon=-75.12364
* https://github.com/keepright/keepright
* http://osmose.openstreetmap.fr/en/map/
* https://wiki.openstreetmap.org/wiki/OSM_Inspector


# Ideas

* nanocosm
* Map of user groups around the world http://usergroups.openstreetmap.de/
* DC Wiki - How do we do x?  e.g. sidewalks

# See Also

* https://wiki.openstreetmap.org/wiki/User_group
* https://github.com/maptime/maptime.github.io/blob/master/_data/chapters.json
* https://wiki.openstreetmap.org/wiki/User:Mvexel/New_User_Welcome_Message
* https://www.wmata.com/schedules/timetables/all-routes.cfm?State=DC
* https://github.com/fossgis/usergroups-bot - This is a bot written in Python, collection all Template:User_group together and generating a KML file to show them on a map: http://usergroups.openstreetmap.de

# Integration

* https://github.com/kort/kort
* StreetComplete

# Use Cases

## List reviews in the area

Some people want their changes reviewed.  Provide a list of these for the AOI.

## An organizer organizes a street survey

Assume: microcosm exists and has many users, event details have been selected

Steps:

1. Organizer notifies the microcosm about the event.
1. Members RSVP.
1. The event is held.

## At an event members upload pictures of their survey notes

At an event there may not be time for surveyors to enter all their data.  They can take pictures of their notes and upload it to the microcosm for other people to map later.  The notes are entered into a queue of tasks for others to assign to themselves.

Build native apps for iOS and Android to use the camera and upload them to the server.

# Use

* Feature flags - pda/flip, fetlife/rollout
* Internationalization


