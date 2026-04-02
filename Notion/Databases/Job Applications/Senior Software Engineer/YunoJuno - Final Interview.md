---

---

# Present Demo

1. Walk through code
    1. UFF format
    2. Parser
2. Not that I’ve migrated, created a superuser
3. Ensure Celery, Docker, are running
4. Why I’m proud
    3. Use of iterators to ensure the memory usage was kept to a minimum
    4. Use of celery workers to distribute the compute
    5. Read an article by Adam Chainz about the use of the closing() context manager

# Systems Design

5. Requirements
    1. Go through Functional Requirements
    2. Go through Non-functional Requirements
        1. What trade off on CAP Theorem are you expecting
            1. Strong Consistency: If a user updates the description of the business, I should get errors until propagated
            2. High Availability
        2. Scale of entities
        3. Write to Read ratios
6. Core Entities
7. API or Interface
    3. What APIs need to be authenticated?
    4. Pagination
    5. Ordering of data
8. Data Flow
    6. Indexes
    7. FKs
    8. Validation on the DB
    9. Materialised views

# Basics

9. Requirements
10. Core Entities
11. API or Interface
12. Data Flow
13. High-Level Design
14. Deep Dives

How are System Design Interviews Evaluated?
15. Problem Solving: Identify & Prioritise the core challenge
16. Solution Design: Create Scalable Architecture with balanced trade-offs
17. Technical Excellence: Demonstrate a deep knowledge and expertise about *some* areas of your design
18. Communication: Clearly explain complex concepts to stakeholders

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

# Questions for the team

- What’s it like when you’re in the office together, how do you collaborate?
- What attracted you about this role in the first place, and what’s kept you engaged?

# Meta

## Outline

- Technical
    - Bring code I’m proud of, can explain in detail, and guide us through my decisions in a screen share
    - Generic technical questions
        - System Design
        - Project Planning
        - General Web Programming
        - React (assumed)
        - Typescript (assumed)
- Time with team members
    - Ask questions to the team
    - Allow them to understand what it’s like working with me

# Things to Revise

- 🟡 HTTP/HTTPS lifecycle
- 🟡 HTTP methods, status codes, headers
- 🟠 Cookies vs localStorage vs sessionStorage
- 🟠 Basic networking like what a port is, knowing the difference between TCP and UDP, understanding that protocols exist at different layers
- 🟡 Browser rendering pipeline (HTML → CSSOM → DOM → render tree)
- 🟡 DNS resolution & TCP/TLS handshake
- 🟠 Same-Origin Policy, CORS
- 🟠 CSRF vs XSS vs SQL injection (and mitigations) (OWASP for more info)
- Content types, compression (gzip, brotli)
- 🔴 HTML5
- 🟠 React basics
- 🟠 Similarities between Vue and React
- Emerging Technologies
    - Web Sockets
    - PWAs
    - Web Assembly
- 🟡 Fundamentals of JavaScript (async, event loop)
- 🟡 What happens in the browser when you click a hyperlink
- 🟡 What the browser does to load a webpage
- 🟠 Web Accessibility
- 🟠 Basics of responsive design
- Cloud architecture services (IaaS vs. PaaS vs. FaaS), the tradeoffs and when to use them
- Website performance, time to first load, code bundling, content delivery, etc.
- 🟡 V8
- REST vs GraphQL
- Typescript
- CSS Grid
- Basics of how DRF works
- CDN
- Web servers and python
- Knowing what the different types of databases are (ex. relational, document, key/value)

## Next Steps

- [x] Prepare Kraken backend challenge in a way that can be shared (perhaps by anonymising use of D0010 file etc.)
- [x] Prepare curriculum around generic technical questions
- [ ] Practice answering generic technical questions
- [ ] Prepare questions for the team
- [ ] Go through Obsidian notes: obsidian://open?vault=second-brain&file=10%20Software%20Engineering%2FWeb%20Technologies%2FLearning%20about%20the%20Web

# Resources

[https://www.youtube.com/watch?v=Ru54dxzCyD0](https://www.youtube.com/watch?v=Ru54dxzCyD0)
[https://developer.mozilla.org/en-US/docs/Learn_web_development](https://developer.mozilla.org/en-US/docs/Learn_web_development)
[https://www.youtube.com/watch?v=SmE4OwHztCc&t=819s](https://www.youtube.com/watch?v=SmE4OwHztCc&t=819s)
[https://www.youtube.com/watch?v=i793Qm6kv3U](https://www.youtube.com/watch?v=i793Qm6kv3U)

- There are three teams
    - Globalisation team
    - Freelancer Management System - Directory
    - Marketplace -
- Paulo - Senior Software Engineer - 4 Years
- Sam Holt - 2 Years

# My Notes

 I think the interview went quite well, but there were areas that I stumbled on, namely around reflow and repaint of the frontend. I think my understanding of that part of the frontend is lacking a little bit. I always used View as a framework and then maybe didn't get deep into why a frontend may not be performant

some noticeable things about my decision would be:
- The fact that office culture is middling, so it is remote-first, but it looks like some engineers do come in (if they're local to London, they might come in once a week).
- I think that's going to be more flexible for what I want, as long as you know people are coming in.
- The two-day mandatory for the Kraken role is going to be a little bit challenging potentially.


 in terms of culture, they mentioned that they have an engineer rotation for support which happens every six or seven weeks, so it means engineers aren't interrupted as often. The engineers I spoke to said that they enjoy the high trust and being listened to, so it sounds like they are trusted to do what they need to do in their role

 the only amber flag for me is that they only had product managers as of the last two years or so, so previously they were talking directly with the C-Suite. I think that should be fine, but it's definitely an experience that I've had and can be quite challenging in terms of workload. I did say to John that because they have a team lead role, then that will put a good buffer in place for engineer capacity

I've heard some positive signs about tech debt. So they only have 20 feature flags, and it sounds like they front-load things so that they're not building up tech debt, which I like the sound of.

 in terms of 9-5, Paolo said that he has a toddler, so he can manage the hours quite easily. It didn't sound like anyone's overworking, and I didn't mention incidents, but didn't seem like that was an issue. So sounds like the atmosphere on Slack is a lot better than perhaps other well, my own experience

 I feel like I got on quite well with Thomas and Darian. We have similar areas of interest. They're inquisitive, they try things out, and they have a breadth of experience. They also agreed that microservices for Django might not be the right approach, and I'm kind of glad that that's their outlook because it means I might not have to deal with that anymore

one thing that John said was that Tim, who's leaving, and whose role is replacing, wants to work more on open source. So that's a perhaps comparison with Kraken is that they seem to be a bit more open source-facing and community-facing than Juno might be

Another thing to consider here is just the amount of communication I’ve had and the preparation I didn’t have a spec for the job. The interviews were sporadically organised.

Need to consider how recent the CTO moved into their role and the stability that might entail
