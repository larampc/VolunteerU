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
* [Project management](#Project-management)


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

~~For members of the FEUP community and organizations who want to be a part of the volunteering world, VolunteerU is an app that facilitates the creation, divulgation and participation in volunteering initiatives, all in one place.~~
VolunteerU is an app designed for the FEUP community and organizations to discover, share, and participate in volunteering activities effortlessly, streamlining the volunteering experience into one convenient platform.


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

So, we allow the creation of two types of accounts, the students' account and the organizations' account. The main difference between them lies on the possibility to register on events. Only students are allowed to register to events. Students and organizations may create events, specifying the required information.
Additionally, students may also subscribe objects of type Subscribable, such as the category or the organization. This means, that they will be notified everytime there is a new event of that category or organization, respectivelly. 
Also, we allow students to subscribe to events (which we call "like an event"), being notified whenever the information about the event is changed or the number of people registered is getting close to the full capacity.



## Architecture and Design
### Logical architecture
The logical structure of our code is layered. The app UI is backed up by the logic of our business, using as external services Google Maps to helping locate events. This middle layer is supported by the database schema needed to save and import information to/from FireStore and Firebase.
![Logical Architecture](/docs/logical_architecture.png)

### Physical architecture
Our deployment view separates two types of users, both using our Flutter application. They access the same server whose UI is composed by the Profiles generated for each user and the Events which are the base of our app concept.
The Profiles have associated a business logic that uses products from the Google Server such us Firebase Authentication and Firestore (for saving and importing more user details besides those of authentication).
The Events Business Logic resort to Google Maps API needed for location purposes and the Firestore API to manage the data of these events.
![Deployment Architecture](/docs/deployment_architecture.png)

### Vertical prototype
- Register and login page - use of firebase.
- Main page with events.
- Basic page for creating events.
- Basic profile.
![Vertical Prototype](/docs/vertical_prototype.gif)

### Testing

![WhatsApp Image 2024-05-01 at 10 31 30](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC18T1/assets/68955432/e07319e2-2e39-4cd5-beff-da2141d34041)

As of 16/05:

![WhatsApp Image 2024-05-16 at 14 33 16](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC18T1/assets/68955432/5de78801-6ecb-4df7-81fe-2729abbedcda)



## Project management
### Beginning of sprint 1:
![image](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC18T1/assets/124478712/ba754734-3c81-4aed-8aa5-29e4942e5beb)

### After sprint 1:
![image](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC18T1/assets/124478712/f6adf7cd-e431-46a8-b6f9-b0354bc2359e)

#### Sprint retrospective
- Did well:
  - Applied the collocated team idea, which boosted productivity and communication;
  - Pair programming was effective to improve team spirit and orient the vision of product;
  - We were not afraid to refactor the architecture of the system;
  - We were persistent when facing adversities;
  - Good communication;
  - Respected each other's ideas;
  - Quickly learned the necessary technologies;
  - Well defined scrum-master and product owner;
  - Immediately resolved problems that were blocking further developments.
   
- Do differently:
  - Manage time better, not exceding 6 hours/week -- We spent a lot of time trying to make acceptance tests work;
  - Allocate tasks in a more structured manner, making it clearer how to start working on the PBI;
  - Pop the happy bubble sooner;
  - Everyone giving their feedback on app updates.
        
- Puzzles:
  - Doing everything in a short time burst, could lead to disorientation.

### Before Sprint 2:

![ESOF_before_sprint2](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC18T1/assets/68955432/14c47932-8072-45b3-954d-1b8b15cb4014)

### After Sprint 2:

![ESOF_after_sprint2](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC18T1/assets/68955432/a7f7998e-42c1-4f17-9a03-1c0956644437)

#### Sprint Retrospective

Following the first sprint, we worked on all the things we wanted to do differently, setting up tasks in an ambitious but more realistic way and easying the communication.

- Did well:
  - Better management of time effort
  - More balanced work during the sprint, avoiding big stresses in the last days before the deadline
  - We were better prepared and worked faster
  - There was better team management and offloading of work between members
  - The team communicated well
  - All members' ideas were respected

- Do differently:
  - Make it easier to give structured feedback on app updates. Currently, feedback is given in a unstructured and disorganized manner.

- Puzzles
  - No puzzles. Although we are currently puzzled on the best way to reach and communicate to people interested in buying/acquiring our app.


### Before Sprint 3

![sprint3_before](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC18T1/assets/68955432/873bb377-b1ea-43f0-ade6-50541ebceb92)

### End of Sprint 3

![image](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC18T1/assets/68955432/8d3e2317-c059-4f7c-a1ec-c6feca579130)


#### Sprint Retrospective

- Did well:
  -  Decent management of time effort: We knew time availability would be low, therefore, we adapted the effort of the sprint 
  -  Feedback was given in a more structured and organized way
  -  Explored possibilities of opening the app to market by connecting with people in the industry
  -  Boosted team spirit with off-work socialization
  -  All members' ideas were respected
  -  The work was balanced during the sprint

- Do differently
  - Work division was not perfect yet
  - Sometimes we were stuck in a happy bubble - should have been popped earlier.

- Puzzles
  - What's the correct balance between social dynamics to increase team spirit and focused work on the development.


The results of the integration tests can be found [here](#Testing).
