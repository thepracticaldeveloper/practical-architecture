# Decision: Logging Platform

* **Date**: 2019-07-11
* **Participants**: John Doe, Backend Chapter
* **StakeHolders**: Backend Chapter, Architecture, Jose Gomez
* **Status**: Complete

## Background

We have a distributed system and our logs are scattered across multiple hosts. This is making us waste a lot of time since we need to correlate multiple log sources manually. The impact is twofold:

* Finding and fixing a bug requires a lot of time.
* We're also very slow when we want to resolve a customer's issue. 

## Alternatives

A centralized logging platform would be a nice solution for our problem. The first division we can make is based on whether they are provided as a service or not:

### As a service

These platforms provide a simple 'plugin' for our apps. They scan our logs and upload them to the cloud. Then, we can access their UI and do searches and, depending on the license we purchase, some advanced data analysis. After some research we have considered:

* **LogsIsAllYouNeed**: $80/month for our case and 1 year retention. It allows only log search and some basic graph features like counting per error level.
* **Log7xyz**: $50/month and 6 month retention. It has a powerful AI engine that we could use in future to process our data.

### On premise

These providers offer a solution that you can install on your own hardware or containers. You have to maintain the service. After checking licenses, we took one candidate:

* **LogYou**: $350/year and they offer 24/7 online support. You can setup a Highly Available platform in maybe one week with the proper infrastructure.  

## Constraints

### As a service 

1. We have to go through the approval process in our organization. That will take 3 months minimum. 
2. We need an internal audit to determine that logs are secure in the cloud. 

### On premise

1. We don't have the proper infrastructure at the moment. But we could ask for extra resources and get them in 2 weeks.

## Decision

We prefer the Logs as a Service solutions, Log7xyz has a retention period that is more than enough for us and we could use their extra features to learn from the data how to make better use of our system.

However, given our constraints, we have to go for the On-premise option for now, LogYou, because we can't wait for the approval process. Our situation is becoming hard to maintain with people working overtime just to scan logs.

Anyway, we'll start the approval process in parallel because we'd like to explore the cloud services in the future.

### Action Points

* John Doe will contact LogYou and manage the process to get a license asap.
* Michael will take care of asking for new infra resources and setting them up within their team.
* Backenders will integrate the solution in the different services.
* John Doe will start the process to have approval for Logs as a Service.
