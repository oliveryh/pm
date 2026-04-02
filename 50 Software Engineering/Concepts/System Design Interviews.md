![https://www.youtube.com/watch?v=FxAom29OEKE](https://www.youtube.com/watch?v=FxAom29OEKE)
![System Designs Video](https://www.youtube.com/watch?v=Ru54dxzCyD0)

https://github.com/bhavul/System-Design-Cheatsheet/tree/main

![[Pasted image 20260113201000.png]]

# Basics

1. Requirements
2. Core Entities
3. API or Interface
4. Data Flow
5. High-Level Design
6. Deep Dives

How are System Design Interviews Evaluated?

1. Problem Solving: Identify & Prioritise the core challenge
2. Solution Design: Create Scalable Architecture with balanced trade-offs
3. Technical Excellence: Demonstrate a deep knowledge and expertise about _some_ areas of your design
4. Communication: Clearly explain complex concepts to stakeholders

# Fundamentals

- Storage
	- Relational DB
	- Document Based
	- Key-Value
- Scalability
	- Scale Compute
		- Vertical Scaling
		- Horizontal Scaling
	- Scale Storage
		- Sharding
		- Consistent Hashing
- Networking
	- OSI layers
		- Application Layer
			- HTTP/HTTPS Protocols
			- REST vs GraphQL vs gRPC
			- RESTful semantics
			- DNS Resolution
			- Websocks vs SSE
		- Transport Layer
			- TCP
			- UDP
			- Request Response Lifecycle
		- Network Layer (Less likely to come up)
			- Load Balancing
			- Firewalls
			- ACLs
- Latency, Throughput, and Performance
	- RAM: 100ns
	- SSD: .1-.2ms
	- HDD: 1-2ms
	- Same Region: 1-10ms
	- Cross Region: ~50ms
- Fault Tolerance
	- Failures are inevitable in distributed systems
	- Failure Modes
	- Failure Detection and Recovery
- CAP Theorem?

# Database

- NoSQL
	- Key-Value: Redis
	- Document Databases: Mongo DB
	- Wide-Colum: Cassandra
	- Graph DB: Neo4J
	- ElasticSearch: Search optimised DB
- Relational
	- Postgres
	- SQLite
	- MySQL
- Caches
	- Redis
- Message Queues
	- SQS
	- Celery
- Server / Services
	- Microservices mainly chosen because of an ability to scale separately
- Blob Storage
	- S3
- Load Balance
- API Gateway
- Microservices
- Client
- CDN: Content Delivery Network
	- A Cache that is colocated to clients

# Problems

# Flashcards

What is CAP Theorem
?
Consistency: All nodes have a consistent view of the data
Availability: The possibility of a node to respond to requests at all times
Partition tolerance: The ability to continue operating if there is a network partition


What is ACID?
?
Atomicity: Transaction is all or nothing. If any part of a transaction fails, then nothing is committed
Consistency: (Valid State): A transaction brings the database from one valid state to another, ensuring data adheres to all defined rules and constraints.
Isolation:  (Independent Execution): Concurrent transactions appear to run sequentially, preventing interference and ensuring one transaction's intermediate results aren't visible to others.
Durability: (Permanent Changes): Once a transaction is committed, its changes are permanent and will survive system failures, crashes, or power outages.

When would you use SQL over NoSQL?
?
If you need ACID compliance
Financial
Aren't updating the schema frequently

What as BASE principles?#

Non-functional requirement prompts?
Common trade-offs?

# Process

Continue to validate if there is anything missing
State assumptions around auth

1. Requirements
	1. Go through Functional Requirements
	2. Go through Non-functional Requirements
		1. What trade off on CAP Theorem are you expecting
			1. Strong Consistency: If a user updates the description of the business, I should get errors until propagated
			2. High Availability
		2. Scale of entities
		3. Write to Read ratios
2. Core Entities
3. API or Interface
	1. What APIs need to be authenticated?
	2. Pagination
	3. Ordering of data
4. Data Flow
	1. Indexes
	2. FKs
	3. Validation on the DB
	4. Materialised views
