---

---

# Implementation Notes

## Suggested Steps

1. Define data model
2. Data validation
3. Business logic
4. Initialise Vue Starter App

## Initialise Project

5. Create piclo project
6. Add competitions page

## Define Data Model

- Add Competition model
- Add relation to buyer

## Data Validation

Close can't be before open

## Business Logic

Add data function of open/close that determines state

# Challenge

The following logic closely mirrors that of our production system.
Depending on which track you take, some of it may not be relevant, so
feel free to skim this part on first read.
The [Piclo platform](https://picloflex.com/) allows **buyers** (system operators) to advertise **competitions** for procuring energy from **sellers** (flex providers). Sellers can then submit **bids** against competitions.
The following relations are in place:
- a buyer has many competitions
- a competition has many bids
- a seller has many bids

A bid is **successful** if the following is true:
- its `offered_capacity` is equal to or greater than than the competition's `minimum_capacity`
- its `accepted` state is true
- its associated `seller`'s `verified` state is true
- it was created within the associated competition's `open` and `closed` dates

A competition has the following states:
- *pending* when the competition's `open` and `closed` date/times are in the future
- *open* when the `open` value is in the past, but `closed` is in the future
- *closed* when `open` and `closed` are in the past

Assume competitions' `open` / `closed` date/times are always sequential
Capacity values use MW units

##

## Task

Dummy data from backend `buyers`, `sellers`, `competitions` and `bids` microservices can be found in the `data` folder.
Complete the tasks for the role you are applying for. This is more
than two hours' work. Feel free to focus on those tasks you feel best
demonstrate your skillset (e.g. you make prefer to start with/focus on
the UI components).

###

### Frontend track

7. Build a data structure representing a list of **successful** bids by ID.
8. Build a data structure which to represent **closed** competitions, containing:
- The competition's `name` and that of its associated **buyer**
- the total value of successful bids in the competition
- the total volume of `offered_capacity` for successful bids
9. Build a data structure to represent competitions including its `name` and a value representing a percentage of **successful** bids
10. Build a list of the top 10 buyers by number of competitions (irrespective of status)
11. Display this data on a single page. We've intentionally left this vague.
12. Update the README with any provisioning steps for running the code and/or tests

Assume you have lazy backend colleagues and data returned from the
backend has not yet implemented the above logic (aside from
competitions' `open` and `closed` dates being sequential)

###

### Fullstack track

- [ ] Set up an application where data in `competitions.json` can be loaded and stored in a database.
- [ ] Build an API which aligns to the competition data, and its associated business logic. Include any validation you deem relevant.
- [ ] In the frontend, consume the `competitions` endpoint
- [ ] Build a data structure to represent competition `names` grouped by their status
- [ ] Display this data on a single page. We've intentionally left this vague.
- [ ] Update the README with any provisioning steps for running the code and/or tests

#

# Submitting your solutions

13. Create a new branch
14. Work on the new branch committing early and often
15. Create a pull request describing your solution, including any relevant design decisions.

Things we'll be considering:
- Tests
- Scalability
- Prioritisation (hint: descoping is fine)
