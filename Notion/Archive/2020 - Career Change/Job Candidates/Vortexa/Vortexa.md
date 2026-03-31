---
base: "[[Job Candidates.base]]"
Job Title: ""
Location: ""
Recruiter: |-
  Dean Morgan
  Lead Software Consultant
  +44 7889728824
  Search Technology Limited
  86 – 90 Paul Street
  London
  EC2A 4NE
  www.searchtechnology.io
  0208 080 0504
Column: Rejected after interview
Skills: []
---
# Examples
GENUS
- JupyterLab
- ML
- Data processing pipeline
- Python/Numpy/sklearn/Tensorflow/Pandas
- Forecasting/Prediction
- Scala
- distributed systems, including real-time streaming and batch data processing

RAGE
- Docker
- JupyterLab
- Docker
- challenges and infrastructure troubleshooting
- experience with Machine Learning research and development

Cypher
- Elastic Search

Ops UC
SOR
- Built up strong linux operating system knowledge
- Fault tolerant systems

# Listing
<!-- Column 1 -->
The Challenge...
Ingesting hundreds of rich data points per second from many vastly different external sources, moving terabytes of data while processing it in real-time, running complex and complicated prediction and forecasting AI models while coupling their output into a hybrid human-machine data refinement process and presenting the result through a nimble low-latency SaaS solution used by customers around the globe is no small feat of science and engineering. This processing requires a highly reliable, stable, fault-tolerant infrastructure and data pipelines that can withstand multiple and varied uses and abuses by data analysts, data scientists, industry experts, and the end-users.

<!-- Column 2 -->



The Predictions and Market Modelling Team are responsible for generating high-value forecasts that enrich our data products. We have built a wide variety of data processing pipelines including state of the art Machine Learning models to predict the operations of the >10,000 tankers tracked by our system, which have enabled us to provide the most accurate and comprehensive view of global oil and gas flows. We take pride in applying cutting-edge research to the real-world problems in a robust, long-lasting and maintainable way. The quality of our data is continuously benchmarked and assessed by experienced market and data analysts to ensure the quality of our predictions. We use a wide variety of technologies like Python/Numpy/sklearn/Tensorflow/Pandas, Java/Kotlin/Scala, Airflow, Apache Kafka and Kafka Streams, Elastic Search, Kubernetes, Jupyter, and AWS services like AWS Sagemaker, MSK, RDS, Athena and others. 

You'll be instrumental in designing, implementing and testing code that allows historically niche research to be elevated to the real-world scale. Working with data scientists, analysts, engineers and experts, you'll help bridge the gap between scientific experiments and commercial products by ensuring 100% uptime and bulletproof fault-tolerance of every component of the infrastructure. In addition to this, you'll work closely with team members to implement best practices in our key technologies.

We are:
▪ A vibrant, diverse company pushing ourselves and the technology to deliver beyond the cutting edge
▪ A team of motivated characters and top minds striving to be the best at what we do at all times
▪ Constantly learning and exploring new tools and technologies
▪ Acting as company owners, which all of us are - in a business-savvy and responsible way
▪ Enjoying a friendly working environment
▪ Motivated by being collaborative, working and achieving together
▪ Not only teammates but friends, often finishing the week enjoying a glass of a favourite drink and a game of 3D Connect 4 together
▪ Offering a generous salary and equity

You are...
- Driven by working in an intellectually engaging environment with the top minds in the industry, where constructive and friendly challenges and debates are encouraged, not avoided
- Experienced influencer and patient evangelist of the cutting edge and yet pragmatic software
engineering best practices
- Passionate about writing elegant, modular code, underpinned by well-defined contracts, that can
withstand the test of time
- Experienced in Python/Numpy/Pandas
- Experienced in using distributed systems, including real-time streaming and batch data processing
- A graduate in Computer Science or equivalent (advanced degree a plus)
- Not afraid of challenges and infrastructure troubleshooting
- Excited about working in a start-up environment
- Motivated by bringing new ideas to production
- Self-sufficient but not afraid to ask for help when needed
- A thinker who likes to push the boundaries of their job role


Awesome if you:
 Are a natural technical mentor and authority, whom people gravitate to for advice and opinion
 Have experience with Apache Kafka and Kafka Streams - deployment, monitoring, resiliency, fault-
tolerance, cluster planning and operations, applications debugging
 Are skilled with Kubernetes
 Have experience with Machine Learning research and development projects
 Are familiar with Airflow or other workflow orchestration tools
 Have some relevant AWS or Kafka certifications
 Understand data lakes like Parquet, Orc, Athena
We offer:
 A competitive remuneration package
 Stock options in a fast-growing, high-potential business
 Private Health Insurance
 Work Perks - discounted travel and cinema tickets, shopping and travel.
 The opportunity to work with industry experts on the leading edge of artificial intelligence
in commodity trading
 A working environment built on merit, which celebrates creative thinking and
collaborative achievement

# Interview Preparation
## Technical
### Rust
- Strongly typed language
- Works well for processing large amounts of data
- Rust allows you to pick between storing memory on the stack or the heap and determines at compile time when memory is no longer needed.
- Without garbage collection constantly running, rust projects 

### Kafka
- Stream Processing
    - Given a sequence of data (stream), a series of operations (kernel functions) are applied to each element in the stream.
- When is Stream Processing useful
    - Compute Intensity
    - Data Parallelism - If the same function is applied to all records of a stream and a number of records can be processed simultaneously without waiting for the results from previously records
    - Data Locality 

### Spark
- PySpark Context
    - Connects to a network port on your computer to connect to a sparkContext object in the JVM (Spark)
- Py4J
    - Python for Java
- Why might PySpark be slow compared to Spark
    - Since python communicates via a network port to Scala it uses **Inter-Process Communication** 
    - It needs to serialize the data and pass via a temporary file or special server (network socket)

### A* Search Algorithm
- Minimizes $f(n) = g(n) + h(n)$
    - $n$ is the next node in the path
    - $g(n)$ is the cost of the path from the start node to $n$
    - $h(n)$ is a heuristic function that estimates the cost of the cheapest path from $n$ to the goal
- Admissable heuristic function
    - Never overestimates the cost of reaching a goal

### Apache Arrow
- Language independent columnar memory format for flat or hierarchical data
- Support zero-copy reads for fast data access without serialization overhead

### Pandas
### Numpy
- Library to work with n-dimensional arrays
- Why is numpy faster than lists?
    - Numpy arrays are stored in one continuous place as opposed to python lists
- What language is numpy written in?
    - Some parts are written in Python but the parts that required fast computation are written in C/C++
- Basic Functions
    - `arange` - `np.arange(10, 30, 5)` provides multiples of 5 between 10 and 30
    - `around(a, decimals)` - Returns input rounded to number of decimal places
- Why would you use numpy over lists in Python
    - Numpy arrows consume less memory
    - Nump arrays execute faster and don't have a heavy runtime
    - Numpy has a highly readable syntax

### Design Patterns
- Adapter Pattern
    - Wrapper between two objects
    - Catches call for one object and transforms them to a format and interface recognizable by the second format
- Bridge
    - Decouple and abstraction from it's implementation so they can work separately


### Python
- What is the python programming language and it's benefits
    - OOP
    - Threads
    - Automatic memory management and garbage collection
    - Modular
    - High-level language
- What is the difference between a class method and a static method
    - A class method can access class attributes
    - A static method cannot access class attributes
- How is Python Executed
    - Python files are executed to bytecode and are then exeuted
- Difference between a list and an array
    - A list can contain multiple data types while an array can only hold one
    - Array is a wrapper around C arrays
    - Arrays use less memory than lists
    - Length of array is pre-determined on creation
- Mutable vs Immutable
    - Mutable Types: Lists, Sets, Dictionaries, Byte Arrays
    - Immutable: String, Tuples, Arrays
- What is the difference between a list and a tuple
    - Lists are mutable (can be edited) while tuples are immutable (can't be edited)
    - Tuples are faster than lists
- Multiprocessing
- Python Interpreter
    - As long as python bytecode and the Virtual Machine have the same version then python can be executed on any platform
    - Dynamic typing means we don't have to declare up front the types
- Garbage Collection
    - Keeps track of a number of references to an object
    - Once that goes down to zero, it deletes the object
- How is memory managed in Python?
    - Memory managed on a private heap space
- Explain the use of the with statement
    - Allows you to carry out common cleanup methods that are often required in particular contexts like opening/closing files

## Object Oriented Programming
- Inheritance
    - 
- Polymorphism
    - Ability for an object to perform different actions based on context
- Abstraction
    - Hide implementation details from the user
- Encapsulation

### OS Kernel
- Core of operating system that has complete control over everything in the system
- Portion of the OS code that is always resident in memory

### Numba
- Translates python code to optimized Machine Code at runtime
- JIT Compiler
    - 


## Experience
### Distributed Pricing
- Scala
- Savings using Scala to reduce the need for Serialization/Deserialization
- Managed technical team of 6 people
- Worked closely with Data Scientists to convert business knowledge into code
- Implemented CI/CD automated testing build process

### Rage GPU
- Determined how to setup a GPU on RedHat linux 

# Company
## Benefits
- I've communicated that I earn £70k inc. Bonus
- They can provide £70-75k base salary with a £10-25k option in equity
- Private healthcare

## Team
- Building up 3 pods made up of 3 DS / 3 DE / 3 SE
- Data Engineer
    - Performance and Operations
    - Metrics
    - Model Degredation
    - Automated Alerts/Performance monitoring
- Software Engineer
    - Data manipulation
    - Python ecospace
    - Airflow and Kafka Useful
    - Kubernetes


## Interviews
- [x] #1 - Andrew Good (Head of Recruitment)
- [x] #2 - Gustavo (Lead of Predictions and Market Modelling)
- [ ] #3 - Coding interview with Christof/Radu
- [x] #4 - Take home challenge
- [ ] #5 - Talk with Kit


# Topics to Revise
- What quality assurance might you have on a regression model
- How might you detect model drift in a model
- Basic data science and statistics (regularisation, normalisation, bias etc.)
- Numpy use-cases
- Pandas use-cases
- Read through [http://scipy-lectures.org/intro/numpy/array_object.html#what-are-numpy-and-numpy-arrays](http://scipy-lectures.org/intro/numpy/array_object.html#what-are-numpy-and-numpy-arrays)
- Python advanced stuff - How to create a decorator
- [https://www.youtube.com/watch?v=sw85SCv847Y](https://www.youtube.com/watch?v=sw85SCv847Y)

# Case Study Interviews
[https://workera.ai/resources/machine-learning-case-study-interview/](https://workera.ai/resources/machine-learning-case-study-interview/)
## Outline
- [ ] AI Project Lifecycle
- [ ] List out AI problems faced by the company at the moment

## Framework
ASPER Framework
- **Ask** - Ask questions to uncover (hidden) details about the question
- **Suppose** - State assumptions
- **Plan** - Break the problem down into tasks
    - Data Engineering
    - Modeling
    - Deployment
- **Execute** - Execution, detail out the tasks in sequence
- **Recap** - Summarise your solution and express how the problem might also be extended

## Interview Tips
- Avoid clear-cut statements

[[Vortexa Case Studies]]
[https://medium.com/airbnb-engineering/machine-learning-powered-search-ranking-of-airbnb-experiences-110b4b1a0789](https://medium.com/airbnb-engineering/machine-learning-powered-search-ranking-of-airbnb-experiences-110b4b1a0789)
[https://medium.com/vortechsa/turning-a-repetitive-business-task-into-a-self-improving-process-929c6b9a52dc](https://medium.com/vortechsa/turning-a-repetitive-business-task-into-a-self-improving-process-929c6b9a52dc)
[https://medium.com/vortechsa/exploring-vortexas-new-voyage-calculator-fab5379c5d4a](https://medium.com/vortechsa/exploring-vortexas-new-voyage-calculator-fab5379c5d4a)
[https://workera.ai/resources/machine-learning-case-study-interview/#I](https://workera.ai/resources/machine-learning-case-study-interview/#I)
