### DBT-BigQuery Data Warehouse Project

This project uses DBT (Data Build Tool) to transform raw data in Google BigQuery into a structured warehouse for analytics and reporting. The project is organized into three main layers:

1. Staging Layer: Sources and prepares raw data from various inputs, applying basic cleaning and structuring to facilitate further transformations.
2. Warehouse Layer: Integrates staging data into consolidated tables, aggregating and organizing information for analytics purposes.
3. Operational Business Tables (OBT): Creates reporting tables tailored for stakeholders' usage, providing business insights and facilitating data-driven decision-making.

## Setup
1. DBT-BigQuery Connection: The project is configured to connect DBT to BigQuery for managing data transformation workflows.

2. Data Flow:
- Raw Data ➔ Staging ➔ Warehouse ➔ OBT
- This pipeline ensures data integrity and scalability, making high-quality data accessible for stakeholders.

## Project Goals
This setup aims to streamline data accessibility for stakeholders, enabling them to leverage up-to-date insights in decision-making processes.

## Key Benefits
1. Automated Transformations: Using DBT allows for automated and versioned data transformations.
2. Scalability: BigQuery’s infrastructure supports handling large datasets efficiently.
3. Stakeholder Insights: Tailored reporting tables (OBT) make data readily available and actionable.
