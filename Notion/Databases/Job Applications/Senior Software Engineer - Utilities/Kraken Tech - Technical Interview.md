---

---

# Interview Info

- Interview is with
    - Ed Burroughes (Senior Software Engineer)
    - Glen Kirkup (Senior Software Engineer)

# Interview Topics

- Discuss technical challenge
    - Topics from technical challenge
        - SFTP
        - Industry Terminology
            - Flow Files
                - [https://www.businessjuice.co.uk/energy-guides/data-flows](https://www.businessjuice.co.uk/energy-guides/data-flows)
        - Deployment to a remote environment
        - Graceful error handling
        - How a REST interface could be added to allow
files to be uploaded via the web
    - Go through method
        - Read through all code and be able to explain particular decisions
    - Reason behind different technical decisions
        - Settings file and security
        - Use of iterators
        - How I’ve made MPANs and Meter Serial Numbers searchable
    - My assumptions
        - A reading at a particular point in time associated with a particular MPAN can only be found in one D0010 flow file. If a reading appears across multiple files, the ingestion of the second file will fail.
        - Partially storing readings from one file could cause downstream data quality issues. As a result, if a flow file contains a parsing or data integrity error on ingestion, no readings will be stored
    - Limitations / Future Improvements
        - The D0010 flow file specification provides validation notes for each flow item. These could be validated during parsing using something like Pydantic, and in addition, the Django model schemas could be improved to more closely align with the expected format from the specification
        - Some groups that weren't directly applicable for creating meter readings (e.g. Site Visit Information) were ignored during parsing
        - A parsing or data integrity error is caught and re-raised. Assuming a large number of UFF files may be processed at once, an improvement here might be to continue until all files are attempted
        - A logger that captures log levels and timestamps would likely be a more appropriate output when running the management command
        - Configure linter, type checker, and code coverage in CI to maintain high code quality with additional contributors
- Technical questions around topics in general
    - Presume job spec topics
        - Python
        - Django
        - Domain Modelling
        - HTTP and REST APIs
        - Fault-tolerant software
        - Celery and Async processing
        - Postgres
    - The general approach to building data intensive applications
- [Engineering Blog](https://engineering.kraken.tech/) articles
- Questions I have for the team
- [Public coding conventions](https://github.com/octoenergy/public-conventions)


- [ ] [https://www.youtube.com/watch?v=yBX89xUmnyk](https://www.youtube.com/watch?v=yBX89xUmnyk)

# General Tips

- Demonstrate evidence based decision making
- Outline trade-offs of various choices

# Code Review

- Python concepts
    - Be able to explain what the difference between a Generator, Iterator, Iterable is
- Memory Usage
    - File is being iterated over, yielding an iterator to use
    - Bulk_create will consume the iterator in batches, resulting in memory efficient profile
- Performance
    - Lack of select_related, prefetch_related mean unnecessary fetches of flow file for each row
        - selected_related: Does an SQL join and therefore gets the results back as part of the table from the SQL server
        - prefetch_related: Executes an additional query
    - A Read Replica for all read traffic reduces the potential impact on the application if there is a sudden influx of update operations like inserting or backfilling large amounts of data
- Django Concepts
    - Deprecation of db_index=True → Meta.indexes is preferred
    - Default index likely uses B-Tree, but for partial matching, another index may be preferred
        - B-tree is a self-balancing tree data structure that keeps data sorted and allows efficient searches, insertions, and deletions in logarithmic time
        - GIN-Index is preferred for full-text search
    - Some Django `QuerySet` methods such as `bulk_update()`, `bulk_create()`, and `update()` don't call the model's `save()` method. If a model has validation logic living in `save()`, it becomes susceptible to data inconsistencies.
    - ❓ FormView and how it works
- Databases
    - ACID
        - Atomicity: Guarantee that each transaction is treated as a single unit
        - Consistency: Transactions can only bring the database from one consistent state to another
        - Isolation: Transactions that are executed concurrently leave the database in the same state that would have been obtained if executed sequentially
        - Durability: Once a transaction is committed, it will remain committed even in case of a system failure
- Concurrency
    - Redis acts as a message broker (and results backend), facilitating communication between Django and the Celery task queue
    - Postgres is better than SQLITE because it allows concurrent writes
- Security
    - CRSF
- Public Conventions
    - The role of interface layers is simply to translate transport-layer requests (like HTTP requests) into domain requests. And similarly, translate domain responses into transport responses (e.g. convert an application exception into a HTTP error response).
        - Layered Approach to the application
            - Interface - Shouldn’t contain business logic
            - Application - Common use-cases
            - Domain - Re-usable business logic
            - Data - No business logic
- Async Programming
    - GIL is a single lock on the interpreter itself which adds a rule that execution of any Python bytecode requires acquiring the interpreter lock


Next topics
- How might you go about added a REST API upload
- DRF
- How might you secure that API
- How might you scale that API
- Exception handling and logging
    - Anticipated and Unanticipated exceptions
- Domain modelling
- Avoiding the use of model forms
- Be able to explain what the difference between a Generator, Iterator, Iterable is
- Testing
- Python basics
- Polymorphism and Encapsulation

# Questions

## Team Ops

- Do you operate in agile (sprints, retrospectives, backlogs etc.)
- The role mentions skills in AWS, Hashicorp
    - Is infrastructure-as-code ownership shared with backend engineers, or is there a dedicated platform team?
- [x] How do you tackle tech debt?
- In the Octopus Energy public conventions, it mentions that sentry errors should indicate a fault that can only be fixed with a code change
    - Do you have any sort of “engineer on-call” rotation?
- How are you largely interfacing with the frontend team (exposing a generic GraphQL layer?)
- Given my background in [Django/Python/your experience], what skill gaps would I need to fill to be effective in this role?
- What’s it like when you’re in the office together, how do you collaborate?

## Business

- The job ad mentions quite a few different topics: Customer Information Systems (CIS), billing, meter data management, CRM, and AI-driven communications
    - What would you say you’re mostly spending your day-to-day doing?
- The ad mentions you’re in a growth phase
    - I’ve heard that Kraken is a large monolith django app
    - Do you find yourself leaning heavily on the domain model that already exists or are you largely working on greenfield work
- Charlotte mentioned you were involved in client demos and you talk about a “customer-first culture”
    - What does that interaction look like. Are you interacting directly with clients or generally interacting through designers
- Handling faults?
- Spa Days to address tech debt
- Agile methodology
- Shape Up
    - 6 Weeks of development
    - 2 Weeks of cool down
- Have a platform team that are quick to respond
    - Don’t need to do platform work unless your project requires it
- Interrupted engineer

# File Notes

- settings.py
    - SECRET_KEY = Used for making hashes
    - DEBUG=True = Should be removed
    - ALLOWED_HOSTS = A list of strings representing the host/domain names that this Django site can serve
    - SQLITE
        - Would be pick Postgres in production
        - PostgreSQL uses **Multi-Version Concurrency Control (MVCC)** with **row-level locking**
    - Middleware
        - CORS controls which origins can make cross-domain requests to your API.
        - CSRF protects against malicious websites making unauthorized requests using a user's existing authentication.
- management/commands/load_flow_file.py
    - Use of iterator
        - **Lazy evaluation**: Computation deferred until needed
        - **Memory footprint**: Amount of RAM consumed
        - **Iterable protocol**: Objects implementing __iter__() and __next__()
        - **Generator exhaustion**: Generators can only be iterated once
        - **Streaming data**: Processing data piece-by-piece rather than all-at-once
    - Use of `yield`
        - yield is a keyword that turns a function into a **generator function**. Instead of returning a value and terminating, it **pauses** execution and returns a value, then **resumes** from that point on the next iteration.

# **Key Changes: CLI → Multi-Customer REST API**

## **Core Infrastructure**

- **Add Customer model** + add customer_id FK to FlowFile and MeterReading
- **Migrate SQLite → PostgreSQL** (concurrent writes)
- **Add Celery + Redis** (async background processing)
- **Add S3/GCS** (file storage)

## **API Endpoints (Django REST Framework)**

- POST /api/v1/flow-files/ - upload file, return job_id
- GET /api/v1/flow-files/{job_id}/status/ - check status
- GET /api/v1/meter-readings/ - query readings

## **Security & Reliability**

- **API key/JWT authentication** per customer
- **Rate limiting** per customer
- **Idempotency keys** (prevent duplicate processing)
- **File validation** (size, type, malware scan)

## **Scalability**

- **Database indexes** on (customer_id, mpan, reading_datetime)
- **Table partitioning** by time period
- **Monitoring & logging** (metrics, structured logs, alerts)

## **Processing Flow**

`Upload → S3 → Queue Task → Return job_id
              ↓
         Celery Worker → Parse → Store with customer_id`

Notes
- Telco
- Hardware and Infrastructure changes
- One-touch switching between ISPs
- Lots of Energy, 2 Water, 1 Telco
- Extracting existing customers to Kraken via APIs and support new sales
- Integrate with a variety of OSSs
- [https://basecamp.com/shapeup](https://basecamp.com/shapeup)
