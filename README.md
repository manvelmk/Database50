# Database50 - Manvel Mkhitaryan
Final Database Project

![alt text](https://github.com/spring440/Database50/blob/master/diagram.png)
Schema and details:
-------------------
1) Each table has an ID as primary key with identity constraint.
2) Most tables are filled with data. Some of the data was randomly generated or assigned for testing purposes. For example foreign key relations for tables that were not supplied with relationships (presentation - track)
3) Cross reference tables are made for tables that have many-to-many relationships.
4) PresentaionProposal table is not a cross reference table. It is used to store presentations that are submitted for approval but are not approved yet (approved if presentaion gets a track and room informaiton.
5) There were duplicate emails in provided data. No action taken considering that the schema assumes each email is assigned to at most one person.
6) Stored procedures are explaied in detail in the README.md of their directory.

Description:
-------------------
Let's say, there is an event. This event is an educational event called  SQL Saturday. It is a database people meetup. It happens once a year at many given addresses/locations and driven by local user groups.
People who attend the meetup have different roles. Some are organizers, they keep track of submitted sessions, notify the presenters, and send all the info about meetup to “students” – who are in essence working professionals. They also solicit Sponsors/vendors.
 Presenters lecture. 
Vendors present software solutions and services and participate in the gift raffle at the end of the event. 
The “students” come to listen to the presentations, grade the presentations and they provide their emails to vendors in exchange for participation in a ruffle.
There are also volunteers that make the event happen along with the organizers.
 One person can be more than in one role during the event, for example, they can come in as both vendors and presenters.
Some presenters visit other presenter's classes as students.
There are multiple rooms and classes at a single venue address. 
“Class” is a content that presenter presents. It has a title, a description, a duration, and a difficulty level.
Each presenter can present more than one class at the event.
In preparation for the event, many presenters submit potential lectures and organizers choose among offerings organizing information in tracks.
Presenters can present the same class at many events in multiple locations.
There are tracks. Track is a logical collection of classes based on specific area in the database domain.  Examples are SQL Development, Administration, Architecture – etc. The classes are organized per track. The class has a topic and a duration.  Tracks usually happen in the same room, but it is not mandatory.
There is a schedule of classes.
Students can attend all classes, but no more than one class at a time.
The class can have a level of complexity and readiness (beginner, intermediate, advanced)
Room fits up to a given number of people.
There are different number of rooms per location.
Vendors can sit tables, there are total 10 tables.
Presenters can be vendors and organizers, and students can also be organizers and presenters of other sessions.
Class lasts 60 minutes.
