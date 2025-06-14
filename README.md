# Azure Synapse Data Pipeline Project

This project demonstrates how to build a **3-part data pipeline** using Azure Synapse, Azure Data Lake Storage (ADLS), and REST API integration.

---

## 📌 Project Parts

### 🔹 Part 1: REST API ➝ ADLS
- Used Python (or Azure Logic Apps) to fetch stock price data via REST API.
- Uploaded raw data to `raw` container in ADLS in JSON format.

### 🔹 Part 2: Data Cleaning & Transformation
- Converted JSON to clean CSV format.
- Removed unnecessary columns.
- Ensured schema matches SQL query structure.

### 🔹 Part 3: Serverless SQL Query in Synapse
- Created an **external data source** pointing to ADLS.
- Used `OPENROWSET` to read CSV file.
- Created a **view** (`vw_StockPricees`) for querying structured data.
- Verified in Synapse Studio.

---

## 🗂 Files Included

| File | Description |
|------|-------------|
| `part1_api_to_adls.py` | Script for API data extraction |
| `part2_csv_cleaning.ipynb` | CSV formatting and transformation |
| `part3_sql_view_query.sql` | SQL script for view creation and querying |
| `images/` | Screenshots of pipeline and output 

---

## 🚀 How to Reuse

1. Clone this repo.
2. Set up Azure Storage and Synapse Analytics.
3. Replace file paths in SQL script with your own ADLS URI.
4. Run queries or integrate with Power BI.

---

## 📧 Contact

*Author: Ravina Babal*  
For questions, feel free to connect via [LinkedIn](Ravina Babal).
