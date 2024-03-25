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
* [Project management](#Project-Management)

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

For members of the FEUP community and volunteer organizations, the VolunteerU is an app that facilitates the creation, divulgation and participation in volunteering initiatives, all in one place. 


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

## Architecture and Design
### Logical architecture
![Logical Architecture](/docs/logical_architecture.png)

### Physical architecture
![Deployment Architecture](/docs/deployment_architecture.png)

### Vertical prototype
- Register and login page - use of firebase.
- Main page with events.
