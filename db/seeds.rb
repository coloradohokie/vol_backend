# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

Opportunity.create(event_id: 333333, event_title: 'Open Lab Thursday', shift_start)

