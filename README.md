# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Tables
The following tables exist in the app: Assignments, Opportunities, Request Statuses, Roles, and User Permissions LOVs.

## Assignments
The assignments table assigns a contact to a volunteering opportunity. Contacts are managed by Wild Apricot and retrieved through the API. Opportunities are managed by the Opportunities table. This table also contains the status for the assignment (see request statuses below)

## Opportunities
The opportunities table contains all information about the volunteering opportunity. This includes: the Wild Apricot Event ID, title, date, shift start and end, the role (from the roles table), the credit hours, and the visibility.
* **event_id** - The wild apricot event ID associated with the volunteering opportunity. This field is optional as not all volunteering opportunities are associated with an event (eg. studio cleaning, newsletter creation, etc.)

* **event_title** The title of the event. If the event is associated with a wild apricot event, this information should match (auto-import?) whatever is in wild apricot. If not, this can be manually specified (?). This field is requried.

* **event_date** - the date of the event. If the event is associated with a wild apricot event, this information should match (auto-import). Otherwise, this must be specified. This field is required.

* **shift_start** - the start time of the shift. For longer events, it is possible that a person may not work the entire event. This field will default to the start time of the event if there is one, but may be adjusted. This field is required. If it is left blank, the start time of the event will be used.

* **shift_end** - the end time of the shift. Same rules apply as shift_start.

* **roles_id** - the ID of the role (see Roles table). This is necessary so that the responsibilities of the volunteer opportunity are understood, and is also useful for tracking any kind of rate adjustment as some roles may be more difficult than others, and thus worth more than others. This field is an integer which maps to the roles table.

* **credit_hours** - this is the number of hours to assign to the role. This may be useful in a couple of cases:
1. A particular assignment is worth more due to a special circumstance with that specific event. 
2. A volunteering opportunity does not have a specific start and end time, but just something that needs to get taken care of. For example, the creation and distribution of the newsletter.


## Request Statuses
This table contains a list of statuses that a volunteer opportunity could be in. These statues include: Open, Pending, Approved, Denied, Verified, Canceled, Missed
* **Open** - This status indicates the volunteer opportunity has been created and no one is assigned to the request.
* **Pending** - a person has requested to be assigned to this role, but it has not yet been approved by a manager.
* **Approved** - a person has requested to be assigned to this volunteer opportunity, and it has been approved by a volunteer manager.
* **Denied** - a person has requested to be assigned to this volunteer opportunity, and it has been denied by a volunteer manager.
* **Verified** - a volunteer manager has verified that the person assigned to the volunteer opportunity completed their responsibilities. Credit can be assigned to the volunteer for completing this volunteering opportunity.
* **Canceled** - a volunteer manager has canceled this volunteering opportunity.
* **Missed** - a volunteer manager has indicated that the volunteer did not complete the volunteering opportunity.


## Roles
The types of volunteer positions available. eg. Event Manager, Check In, Workday Volunteer, Cleaning Crew

## User Permissions LOVs
This table covers the various types of users inside the app: Admin, Manager, Volunteer, Non-Volunteer.

* **Admin** - This is a super user. They can add, delete, and change permissions of other users. Can add and update volunteer roles and set the compensation level for roles.

* **Manager** - This user permission level can assign, approve, and deny volunteers to roles.

* **Volunteer** - This is a user who has been approved to be a volunteer

* **Non-Volunteer** - This is a user who has not been approved to be a volunteer.