# Phase 2 - Task 1: Company Onboarding & Marketplace Data Model

## Objective

Define important marketplace health metrics and create an event tracking plan for a data-driven marketplace.

## Marketplace Metrics

The following key performance metrics were defined:

| Metric | Definition | Formula | Why It Matters |
|---|---|---|---|
| Time to Match | Time taken to match a buyer request with a suitable seller/listing | Average Match Time | Measures marketplace matching efficiency |
| Match Rate | Percentage of buyer requests that are successfully matched | Successful Matches / Total Requests × 100 | Measures demand-supply matching effectiveness |
| Fill Rate | Percentage of available listings/opportunities that result in completed transactions | Completed Transactions / Available Listings × 100 | Measures supply utilization |
| Transaction Rate | Percentage of eligible marketplace interactions that result in transactions | Completed Transactions / Total Eligible Interactions × 100 | Measures marketplace conversion |

## Marketplace Event Tracking Plan

The following marketplace events were defined:

| Event | Trigger | Actor | Key Properties |
|---|---|---|---|
| Buyer Request Created | Buyer submits a marketplace request | Buyer | Request_ID, Buyer_ID, Category, City, Timestamp |
| Listing Created | Seller publishes a listing | Seller | Listing_ID, Seller_ID, Category, City, Timestamp |
| Match Created | A buyer request is successfully matched with a listing/seller | System | Request_ID, Listing_ID, Buyer_ID, Seller_ID, Match_Timestamp |
| Interaction Started | Buyer and seller start interacting | Buyer/Seller | Request_ID, Listing_ID, Buyer_ID, Seller_ID, Timestamp |
| Transaction Completed | Buyer and seller successfully complete a transaction | Buyer/Seller | Transaction_ID, Request_ID, Listing_ID, Amount, Timestamp |

## Deliverables

- Marketplace KPI metric definitions
- Marketplace event tracking plan
- Excel workbook containing the defined metrics and events

## Tools Used

- Google Sheets
- Microsoft Excel

## Key Outcome

This task establishes a standardized marketplace data model by defining the core health metrics and events required for tracking marketplace demand, supply, matching, engagement and transactions. 

# Task 2 – Job Supply Analysis

## 📌 Overview

This task focuses on analyzing job posting events using Python, Pandas, SQL, and Excel/Google Sheets.

The objective is to understand job supply across different cities and skills, validate skill thresholds, and generate useful analytical summaries.

---

## 🎯 Objectives

- Analyze job posting event data
- Identify the number of unique jobs
- Analyze job postings by city
- Analyze job postings by skill
- Analyze job postings by company
- Validate skill threshold values
- Calculate average, minimum, and maximum skill thresholds
- Perform basic data quality checks
- Generate summary datasets for dashboard reporting

---

## 📂 Dataset

The dataset contains job posting event information with the following columns:

| Column | Description |
|---|---|
| `event_id` | Unique event identifier |
| `job_id` | Unique job identifier |
| `company_id` | Company identifier |
| `job_title` | Job title |
| `skill` | Required skill |
| `skill_threshold` | Skill threshold required for the job |
| `city` | Job location |
| `event_timestamp` | Date and time of job posting |

---

## 🛠️ Technologies Used

- Python
- Pandas
- MySQL
- Excel
- Google Sheets
- Jupyter Notebook
- Git & GitHub

---

## 🔍 Analysis Performed

### 1. Dataset Inspection

- Checked dataset shape
- Checked column names
- Inspected data types
- Viewed first and last records
- Generated descriptive statistics

### 2. Data Quality Checks

- Checked missing values
- Checked duplicate records
- Validated skill threshold values
- Converted event timestamps into datetime format

### 3. Job Supply Analysis

Analyzed:

- Total unique jobs
- Unique companies
- Unique skills
- Unique cities
- Jobs posted by city
- Jobs posted by skill
- Jobs posted by company

### 4. Skill Threshold Analysis

Calculated:

- Average skill threshold
- Minimum skill threshold
- Maximum skill threshold
- Valid skill thresholds
- Invalid skill thresholds

### 5. Time Analysis

Identified:

- Earliest job posting event
- Latest job posting event 

## SQL Analysis

The project includes analytical SQL queries covering:

- KPI calculation
- Data quality validation
- City-wise job supply
- Skill-wise job supply
- Company-wise job posting
- Skill threshold analysis
- High-threshold job identification
- City × Skill analysis
- Ranking using window functions
- Live job supply view

SQL concepts used:

`COUNT`, `COUNT DISTINCT`, `GROUP BY`, `HAVING`,
`ORDER BY`, aggregate functions, filtering,
window functions, `RANK()`, `PARTITION BY`, and `VIEW`.

---

## 📊 Output Files

The analysis generates the following summary files:

- `jobs_by_city.csv`
- `jobs_by_skill.csv`
- `jobs_by_company.csv`

These files contain aggregated results that can be used for reporting and dashboard creation.

---

## 📈 Dashboard

A Job Supply Analytics Dashboard was created using Excel/Google Sheets.

The dashboard includes:

- Total Jobs Posted
- Unique Jobs
- Unique Events
- Valid Skill Thresholds
- Invalid Skill Thresholds
- Jobs Posted by City
- Jobs Posted by Skill

---

## 📁 Project Structure

```text ``` 
task2_job_posting/
│
├── job_posted_event.md
├── job_posted_events.csv
├── Job_Supply_Analysis.ipynb
├── jobs_by_city.csv
├── jobs_by_skill.csv
└── jobs_by_company.csv


# Task 3: Search & Discovery

## Objective

Built a company-side funnel to analyse the journey from company signup to job posting, job views and applications received.

The objective is to provide a clear, data-driven view of company activity and identify where drop-offs occur in the marketplace funnel.

---

## Company-Side Funnel

The funnel tracks the following stages:

Company Signup
↓
Job Posted
↓
Job Viewed
↓
Application Submitted

### Funnel Metrics

| Funnel Stage | Companies |
|---|---:|
| Companies Signed Up | 1000 |
| Companies Posted Jobs | 700 |
| Companies With Job Views | 608 |
| Companies Receiving Applications | 448 |

### Conversion Rates

| Funnel Step | Conversion Rate |
|---|---:|
| Signup → Job Posted | 70.00% |
| Job Posted → Job Viewed | 86.86% |
| Job Viewed → Application | 73.68% |

---

## Event Tracking Plan

The following marketplace events were used to measure the company-side funnel:

| Event | Trigger | Actor | Key Properties |
|---|---|---|---|
| company_signup | Company completes registration | Company | company_id, city, timestamp |
| job_posted | Company publishes a job | Company | company_id, job_id, category, city, timestamp |
| job_viewed | Candidate views a job listing | Candidate | company_id, job_id, candidate_id, timestamp |
| application_submitted | Candidate submits an application | Candidate | company_id, job_id, candidate_id, timestamp |

---

## Data Analysis

The analysis included:

- Event-level data validation
- Missing-value checks
- Duplicate checks
- Event count analysis
- Company funnel calculation
- Funnel conversion-rate calculation
- City-level analysis
- Job-category analysis
- Application analysis
- Business-oriented interpretation of funnel drop-offs

---

## Dashboard

A dashboard was created to provide a live view of the company-side funnel.

The dashboard includes:

- Company funnel overview
- Funnel conversion rates
- Jobs posted by category
- Applications received by category
- Company/job activity by city

The dashboard allows marketplace performance to be reviewed from both funnel and segment perspectives.

---

## Key Findings

- 1,000 companies signed up on the marketplace.
- 700 companies progressed to posting jobs, resulting in a 70% signup-to-job-posting conversion rate.
- 608 companies received job views after posting jobs.
- 448 companies received applications.
- The largest funnel drop-off occurs between company signup and job posting.
- Category-level analysis helps identify job categories with higher posting and application activity.
- City-level analysis provides visibility into geographic differences in marketplace activity.

---

## Business Recommendations

- Investigate why 30% of signed-up companies do not post jobs.
- Improve company onboarding and guide new companies towards creating their first job.
- Monitor job visibility to ensure posted jobs receive sufficient candidate views.
- Identify categories and cities with strong application activity and use them as growth opportunities.
- Investigate categories or cities with relatively low applications for potential supply-demand gaps.
- Track the funnel regularly to identify changes in company activation and candidate engagement.

---

## Files

- `company_events.csv` - Event-level marketplace data
- `company_events.md` - Company-side event tracking plan
- `Company_Funnel_Analysis.ipynb` - Python-based analysis and validation
- `Company_Funnel_Dashboard.xlsx` - Company funnel dashboard

---

## Tools Used

- Python
- Pandas
- SQL
- Google Sheets / Microsoft Excel
- Jupyter Notebook
- Git & GitHub

---

## Definition of Done

- Company funnel view built and demoable
- Funnel metrics calculated from event data
- Conversion rates calculated
- Data quality checks performed
- City and category analysis included
- Dashboard created for business interpretation
- Company-side funnel insights and recommendations documented