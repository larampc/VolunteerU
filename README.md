# VolunteerU | Development Report

Welcome to the documentation pages of our app _VolunteerU_.
You can find here details about _VolunteerU_, from a high-level vision to low-level implementation decisions, a kind of Software Development Report, organized by type of activities: 

* [Business modeling](#Business-Modelling) 
  * [Product Vision](#Product-Vision)
  * [Features and Assumptions](#Features-and-Assumptions)
  * [Elevator Pitch](#Elevator-pitch)
* [Requirements](#Requirements)
  * [User stories](#User-stories)
  * [Domain model](#Domain-model)
* [Architecture and Design](#Architecture-And-Design)
  * [Logical architecture](#Logical-Architecture)
  * [Physical architecture](#Physical-Architecture)
  * [Vertical prototype](#Vertical-Prototype)

Contributions are expected to be made exclusively by the initial team, but we may open them to the community, after the course, in all areas and topics: requirements, technologies, development, experimentation, testing, etc.

Please contact us!

Thank you!

Bruno Aguiar up202205619@up.pt

Filipe Correia hello@fmcorreia.com

Francisco Fernades up202208689@up.pt

Lara Coelho up202208689@up.pt

Paulo Coutinho up202205692@up.pt

---
## Business Modelling

### Product Vision

For members of the FEUP community and organizations who want to be a part of the volunteering world, VolunteerU is an app that facilitates the creation, divulgation and participation in volunteering initiatives, all in one place. 


### Features and Assumptions
- See all volunteering initiatives - list all initiatives, each one presenting its name, image, location, date and duration.
- Filter volunteering initiatives - see only initiatives from a certain category, region or time interval.
- See the details of a specific initiative - more detailed information about the event and its organizer.
- Register for an event - subscribe an initiative in just a few clicks.
- Publish an event - publicitate your event providing all the necessary details.
- User and organization profiles - different attributes for each type of profile, possibility of editing your information and viewing other members profiles.
- Subscribe categories and organizations - receive notifications when a new event of a category or organization you subscribed is published.

Dependencies:
- Maps - for picking the location of an event.
- Firebase - for storing data.
- Calendar - for picking a date and time.

### Elevator Pitch
> [!WARNING]
> TO DO

## Requirements
> [!WARNING]
> TO DO

### User Stories

The user stories can be found in the [Github Project 2LEIC18T1](https://github.com/orgs/FEUP-LEIC-ES-2023-24/projects/35/).

### Domain model
![Domain model](/docs/domain_model.png)

Our domain model is very focused on the interaction between the Event object and the Account object. 

So, we allow the creation of two types of accounts, the students' account and the organizations' account. The main difference between them lies on the possibility to register on events. Only students are allowed to register to events. Additionally, students may also subscribe objects of type Subscribable, such as the category or the organization. This means, that they will be notified everytime there is a change on the quantity of events created by that organization or with that category. 
Also, we allow students to subscribe to events, being notified whenever the information about the event is changed or the number of people registered is getting close to the capacity.

The class Date is an assistant to guarantee that information about time is consistent across the application.



## Architecture and Design
### Logical architecture
![Logical Architecture](/docs/logical_architecture.png)

### Physical architecture
![Deployment Architecture](/docs/deployment_architecture.png)

### Vertical prototype
- Register and login page - use of firebase.
- Main page with events.
- Basic page for creating events.
- Basic profile.
![Vertical Prototype](/docs/vertical_prototype.gif)

