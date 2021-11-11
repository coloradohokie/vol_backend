# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Assignment.destroy_all
Opportunity.destroy_all
RequestStatus.destroy_all
UserPermissionsLov.destroy_all
Role.destroy_all

roles = Role.create([
    {role: 'Event Manager', rate: 1.25, description: 'Manages events'},
    {role: 'Check-In', rate: 1, description: 'checks attendees in'},
    {role: 'Workday Volunteer', rate: 1, description: 'helps with studio workday'},
    {role: 'Cleaning Crew', rate: 1.5, description: 'cleans the studio'}
])

user_permissions = UserPermissionsLov.create([
    {role: 'Admin'},
    {role: 'Manager'},
    {role: 'Volunteer'},
    {role: 'Non-Volunteer'}
])

statuses = RequestStatus.create([
    {state: 'Open'},
    {state: 'Pending'},
    {state: 'Approved'},
    {state: 'Denied'},
    {state: 'Verified'},
    {state: 'Canceled'},
    {state: 'Missed'}
])

opportunities = Opportunity.create([
    {event_id: 222222, event_title: 'Tuesday Event', event_date: '2021-11-01', shift_start: '18:00', shift_end: '22:00', roles_id: roles[0].id, credit_hours: 4, visibility: true},
    {event_id: 222222, event_title: 'Tuesday Event', event_date: '2021-11-01',shift_start: '18:00', shift_end: '20:00', roles_id: roles[1].id, credit_hours: 2.5, visibility: true },
    {event_id: 333333, event_title: 'Open Lab Thursday', event_date: '2021-12-01', shift_start: '18:00', shift_end: '22:00', roles_id: roles[0].id, credit_hours: 4, visibility: true },
    {event_id: 333333, event_title: 'Open Lab Thursday', event_date: '2021-12-01',shift_start: '18:00', shift_end: '20:00', roles_id: roles[1].id, credit_hours: 2.5, visibility: true },
    {event_id: 333333, event_title: 'Open Lab Thursday', event_date: '2021-12-01',shift_start: '20:00', shift_end: '22:00', roles_id: roles[1].id, credit_hours: 2.5, visibility: true },
    {event_title: 'Studio Cleaning', event_date: '2021-12-03', roles_id: roles[3].id, credit_hours: 4, visibility: true }
])

Assignment.create(contact_id: 123456, opportunities_id: opportunities.first.id, request_statuses_id: statuses[4].id, comments: 'this is a comment.')
Assignment.create(contact_id: 789789, opportunities_id: opportunities[1].id, request_statuses_id: statuses[4].id, comments: 'this is a comment.')
Assignment.create(contact_id: 123456, opportunities_id: opportunities[2].id, request_statuses_id: statuses[4].id, comments: 'this is a comment.')
Assignment.create(contact_id: 789789, opportunities_id: opportunities[3].id, request_statuses_id: statuses[4].id, comments: 'this is a comment.')
Assignment.create(contact_id: 123456, opportunities_id: opportunities[4].id, request_statuses_id: statuses[4].id, comments: 'this is a comment.')
Assignment.create(contact_id: 789789, opportunities_id: opportunities[5].id, request_statuses_id: statuses[4].id, comments: 'this is a comment.')







