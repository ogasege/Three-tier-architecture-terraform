# DEPLOYING A THREE-TIER APPLICATION ON AWS USING TERRAFORM

The three tiers of the architecture are explained below: 

## Presentation Tier (or User Interface Tier) 

This tier handles the user interface and presentation logic of the application. It is responsible for presenting information to the user and gathering information from user input.

## Application Tier (or Business Logic Tier) 

This tier contains the business logic of the application. It is responsible for processing user requests, executing application logic, and communicating with the data tier.

## Data Tier (or Database Tier) 

This tier contains the data storage and management components of the application. It is responsible for storing and retrieving data from databases, file systems, or other data storage systems.



## Resources to be created

The resources  that will be created include:

- Custom VPC

- 2 public subnets 

- 1 private subnet 

- 2 EC2 Instances

- Security Group

- Elastic IP

- NAT Gateway

- Internet Gateway

- Route Table

- Application Load Balancer

- Apache Webserver

- MySQL DB