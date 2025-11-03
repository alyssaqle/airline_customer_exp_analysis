# Skytrax Delta Air Lines Analysis
<p align="center">
  <img width="1200" alt="Delta Air Lines Dashboard Cover" src="images/delta_airlines.jpg" />
</p>

## TL;DR
Delta Air Lines reviews (2010–2023) show mixed customer satisfaction — avg rating **2.48/5**, **28.8% recommending**, with significant differences between Economy and Premium cabin experiences. Cabin Staff Service and Value for Money emerge as key satisfaction drivers.

## Summary
Analyzed **2,853 Delta Airlines reviews (2010–2023)** using SQL + Python + Mode Analytics to uncover satisfaction drivers. Findings show **moderate satisfaction challenges** (avg rating **2.48/5**, **28.8%** recommending). Key drivers vary by cabin class: **Economy** prioritizes staff service and value, while **Premium** focuses on seat comfort and dining. Comprehensive analysis across 20+ SQL queries and interactive dashboards reveals actionable improvement opportunities.

**Access the dashboard PDF:**  
[Delta Air Lines Customer Satisfaction Dashboard](reports/delta-satisfaction-dashboard.pdf)

---

## 1. Overview  
This analysis covers **2,853 Delta Airlines reviews from 2010–2023**, sourced from AirlineQuality.com. Using a star-schema data model in **Snowflake SQL**, we extracted and cleaned reviews, then segmented results into **Economy (78% of reviews)** and **Non-Economy cabins**. We applied **Pandas + Seaborn** for correlation analysis and built **Mode dashboards** to visualize KPIs.  

**Key Finding:** Delta struggles with satisfaction: an **average rating of 2.48/5** and only **28.8% of passengers recommend** the airline. Drivers of satisfaction differ strongly by cabin class.  

---

## 2. Data Processing Workflow  
- **Extraction:** 100K+ reviews of different airlines loaded into Snowflake and joined across dimensions (aircraft, traveler type, location).  
- **Cleaning:** Normalized traveler type, seat type, and route names; missing values replaced with “Unknown.”  
- **Segmentation:** Reviews split into **Economy (78%)** vs **Non-Economy (22%)**.  
- **Features:** Flags for verified reviews (48% verified).  
- **Validation:** Ensured no skew toward specific routes or aircraft.  

---

## 3. Results  

### 3.1 Overall Satisfaction  
- **Average Rating:** 2.48/5  
- **Recommendation Rate:** 28.8%  
- **Most Common Travelers:** Leisure solo (33.5%) and leisure couple (25%).  
- **Seat Type:** Economy dominates (78% of reviews).  

### 3.2 Economy Class Correlations  
- **Top Drivers:**  
  - **Cabin Staff Service (0.84)**  
  - **Food & Beverages (0.92)**  
  - **Wi-Fi & Connectivity (0.94)**  
  - **Value for Money (0.94)**  
- **Secondary Drivers:** Seat Comfort (0.86), Ground Service (0.82).  
- **Takeaway:** In Economy, satisfaction is built on **attentive staff, meal quality, and value perception**. Seat upgrades help long-haul travelers.  

### 3.3 Non-Economy Class Correlations  
- **Top Drivers:**  
  - **Seat Comfort (0.87)**  
  - **Food & Beverages (0.78)**  
  - **Value for Money (0.89)**  
- **Weaker Links:** Cabin Staff (0.76), Ground Service (0.61).  
- **Takeaway:** Premium travelers are **highly sensitive to comfort and dining**. Even small drops in these areas sharply lower ratings.  

---

## 4. Recommendations  

### Economy
- Train for **friendliness/responsiveness** in cabin staff.  
- **Upgrade menus** via better vendors and variety.  
- Improve **seat ergonomics** (legroom, recline, cushions), especially for long - haul.

### Non-Economy
- Elevate **dining** (chef partnerships, premium suppliers).  
- Invest in **seat padding, adjustability, and space** upgrades.  
- Create **fast feedback loops** for premium cabins to resolve issues quickly.

---

## 5. Key Learnings  
- **Technical:** Authored 20 Snowflake SQL queries; built Mode dashboards with drill-downs.  
- **Analytical:** Economy vs Non-Economy segmentation revealed distinct satisfaction drivers.  
- **Communication:** Converted correlation insights into actionable business recommendations.  

---

## 6. Limitations  
- Scope limited to Delta (no competitor benchmarking).  
- Correlation ≠ causation; operational factors (delays, aircraft age) not included.  
- No predictive modeling yet.  

---

## 7. Next Steps  
1. **Benchmark competitors** (United, American) for relative positioning.  
2. **Sentiment analysis** of text reviews to capture qualitative themes.  
3. **Predictive modeling** (e.g., logistic regression on recommendation likelihood).  
4. **Integrate operations data** (delays, cancellations, aircraft age).  
5. **Automate Mode pipelines** for monthly refresh.  

---
