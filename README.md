# Project 5: Airfare Insights – Analyzing Indian Flight Prices and Patterns

## Dataset

**Title:** Indian Airlines Ticket Price Dataset  
**Source:** [Kaggle](https://www.kaggle.com/datasets/dhirajbembade/indian-airlines-ticket-price-analysis)

---

## Project Overview

Flight pricing is dynamic and influenced by various factors—duration, stops, airline, time of booking, etc. This project uncovers trends in airfare and how different flight attributes impact pricing.  
The goal is to use EDA, SQL, and statistics to derive meaningful insights.

---

## Problem Statement

> **What drives flight fare variation in India?**

We explored relationships between price and flight features such as stops, airline, duration, route, and timings.  
The insights aim to help customers and airlines make smarter decisions.

---

## Key Features Analyzed

- Airline
- Source & Destination
- Date of Journey
- Departure & Arrival Time
- Duration
- Total Stops
- Additional Info
- Price

---

## Project Workflow

### Data Cleaning & Preprocessing
- Extracted journey day and month.
- Converted duration and time to numeric formats.
- Handled missing or inconsistent values.
- Removed duplicates.

### Exploratory Data Analysis (EDA)
- Visualized price distributions overall and segmented by airline and stops.
- Compared prices across airlines, stops, and routes.
- Detected outliers using IQR and Z-score.
- Analyzed duration vs. price correlation.
- Studied the impact of departure time on price.
- Used bar, box, violin plots and group comparisons.

### Statistical Analysis
- **T-Test**: Compared average fare between 0-stop and 1-stop flights.
- **ANOVA**: Checked fare variation across multiple airlines.
- **Correlation**: Measured the relationship between duration and price.
- **Chi-square**: Tested the association between total stops and price category.

### SQL Analysis
- Aggregated average price by airline and route.
- Identified top and bottom-priced flights.
- Flagged flights with unusual price vs. rating trends.

### Visualization / Dashboard
- Created line and bar charts comparing:
  - Price by Airline
  - Stops vs. Fare
  - Source-Destination Routes
- Built interactive visual summaries using Matplotlib, Seaborn, and Plotly.

---

## Tools & Technologies
- **Python Libraries:** Pandas, NumPy, Matplotlib, Seaborn, Plotly, Scipy
- **SQL:** MySQL for query-based analysis
- **Platform:** Jupyter Notebook
- **Data Source:** Kaggle

---

## Team Contributions
- **Yadvendra Singh Dhakad** – Team lead,SQL queries and EDA.
- **Ashutosh Rawat** – Data cleaning and preprocessing,visualizations.
- **Abhay Tiwari** – Statistical tests and interpretations.

---

## Deliverables
- Cleaned dataset (`.csv`)
- Jupyter Notebook with code & plots
- SQL scripts
- PDF summary
- Visualization dashboard

---

## Conclusion
The analysis revealed that **number of stops, airline choice, and booking time** are the most significant factors affecting flight prices in India.  
Direct flights generally cost more, while early morning and late-night flights show competitive pricing. Airlines like *IndiGo* and *Air India* exhibit different pricing patterns for similar routes, highlighting brand influence on fares.

---
