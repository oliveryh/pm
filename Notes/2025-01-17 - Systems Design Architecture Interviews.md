# Designing Platforms

## Monitoring

## Alerting

## Metrics

## Logging

## Datastores

## Caching

## Queues

## Service Discovery

## Configuration

## Application Lifecycle Management

## Auto Scaling

## Load Balancing

## KPIs

# Key Concepts

## Protocols

- **Hyper Text Transfer Protocol (HTTP)** - Abstraction ontop of TCP/IP introducing the request-response pattern

## Storage / Disk

- Important to remember the difference in storing between memory and disk
- Storing on Memory is faster
- Storing on Disk is more fault tolerant / long term
- How fast do you need to read data - In memory might be best
- Can you forgo consistency by using distributed storage

## Memory

## RAID Configurations

## Requests / sec

## Request Time

## Latency

## Data Transfer Rates

## Network limits within a single data center

## Sharding / Partitioning

## CAP

- Shared-data systems can have at most two of the following
	- **Consistency** - There must exist a total order on all operations such that each operation looks as if it were completed in a single instant
	- **Availability** - Every request recevied by a non-failing node in the system must result in a response
	- **Partition Tolerance** - When a network is partitioned, all messages sent from nodes in one component of the artition to nodes in another component are lost

## ACID Transactions

- **Atomicity** - When a single transaction comprises of more than one operation, the database must guarantee that either all operations succeeded or they all failed
- **Consistency** - Each transaction in a database is valid according to the databases schema
- **Isolation** - You can concurrently run multiple transactions on the databases, however the database will end up with a state as though the transactions had been run serially
- **Durability** - Once the data is stored in the database it remains so

## NoSQL

- Ideal for use cases like caching, environment variables, configuration files

## Map Reduce

## Distribued Hash Tables

- 

## Microservices

## Backups

## Caching

## Parallelizing Network Requests

## Load-Balancing

## High Availability

## Content Delivery Networks (CDNs)

- Geographically distributed group of servers which work together to provide fast delivery of internet content
- Relies on caching to improve content delivery speeds
- Can withstand hardward failures

## Queues

## Failures

## Concensus

## Compression

## Database Optimisations

# Questions Approach

1. Ask clarifying questions and write them down
	1. What are the various requirements
	2. What size/disk/frequency/memory etc are needed
2. System APIs
3. High Level Design
4. Database Schema
5. Data Sharding
6. Cache
7. Where do you want to focus (high availability, fault tolerance, backups etc.)

## Requirements

- Functional and Non-functional Requirements

## System APIs

- Determine a list of API calls that one might expect to have to make between components

## Load Balancer

- Distribute traffic between various servers
- Could be done using round-robin or similar

## Data Sharding

# Technologies

## Redis

- In Memory NoSQL Key/Value store
- Primarily used as a cache layer
- RabbitMQ
- Redis
- CouchDB
- PostgresQL
- 
