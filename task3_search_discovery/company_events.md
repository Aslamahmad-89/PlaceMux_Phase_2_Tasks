# Task 3 - Search & Discovery

## Company-Side Event Tracking Plan

The following events are tracked to measure the company-side search and discovery funnel.

| Event Name | Event Description | Trigger | Actor | Key Properties | Why It Matters |
|---|---|---|---|---|---|
| company_signup | A company creates an account on the marketplace | Company completes registration | Company | company_id, city, timestamp | Measures company acquisition |
| job_posted | A company publishes a job on the marketplace | Company publishes a job | Company | company_id, job_id, category, city, timestamp | Measures company activation and supply creation |
| job_viewed | A candidate views a published job | Candidate opens a job listing | Candidate | company_id, job_id, candidate_id, timestamp | Measures job discovery and candidate engagement |
| application_submitted | A candidate submits an application for a job | Candidate submits an application | Candidate | company_id, job_id, candidate_id, timestamp | Measures conversion from discovery to application |

## Funnel Flow

Company Signup
↓
Job Posted
↓
Job Viewed
↓
Application Submitted

## Event-to-Metric Mapping

| Event | Metric |
|---|---|
| company_signup | Total Companies Signed Up |
| job_posted | Total Jobs Posted / Job Posting Rate |
| job_viewed | Job View Rate |
| application_submitted | Application Conversion Rate |

## Important Data Relationships

- Every job_posted event must have a valid company_id and job_id.
- Every job_viewed event must have a valid job_id and candidate_id.
- Every application_submitted event must have a valid job_id and candidate_id.
- Events must contain a valid timestamp.
- Each event should have a unique event record for tracking purposes.