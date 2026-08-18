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