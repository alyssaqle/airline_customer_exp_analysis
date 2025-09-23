# Delta Airline Customer Experience Analysis

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

**For Economy:**  
1. Enhance staff friendliness and responsiveness through training.  
2. Upgrade menus with better vendor partnerships and more variety.  
3. Improve long-haul seat ergonomics (cushions, recline, legroom).  

**For Non-Economy:**  
1. Elevate dining through chef collaborations and premium suppliers.  
2. Invest in seat padding, adjustability, and space upgrades.  
3. Implement fast feedback loops for premium passengers.  

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
