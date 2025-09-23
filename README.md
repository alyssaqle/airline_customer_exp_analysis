# Delta Airline Customer Experience Analysis

## 1. Overview
This analysis covers **2,853 Delta Airlines reviews (2015 - 2025)** from AirlineQuality.com. Using a **star-schema** in Snowflake SQL, I extracted and cleaned reviews, then segmented results into **Economy (78%)** and **Non-Economy (22%)** cabins. I used Pandas + Seaborn for correlation analysis and built Mode dashboards for KPI visualization.

**Key finding:** Delta shows **low satisfaction** - **average rating 2.48/5** and **28.8% recommend rate**. Drivers differ by cabin class.

Access to dashboard **[HERE](https://drive.google.com/file/d/14oqN4O9WCQ8zSPgZSjKYU4uP3CDZYwiZ/view?usp=sharing)**  or **[HERE](https://github.com/alyssaqle/airline_customer_exp_analysis/blob/main/reports/delta-satisfaction-dashboard.pdf)**

---

## 2. Data Processing Workflow
- **Extraction:** 100K+ airline reviews loaded into Snowflake and joined across aircraft, traveler type, and location dimensions.  
- **Cleaning:** Normalized traveler type, seat type, and route names; missing values set to **“Unknown”**  
- **Segmentation:** Economy vs Non-Economy.  
- **Features:** Verified review flag (48% verified).  
- **Validation:** Checked for route/aircraft skew.

---

## 3. Results

### 3.1 Overall Satisfaction
- **Average Rating:** 2.48 / 5  
- **Recommend Rate:** 28.8%  
- **Traveler Types:** Solo Leisure **33.5%**, Couple Leisure **23%**, Family Leisure **25%**, Business **18.5%**  
- **Seat Type:** **Economy 78%** of reviews

### 3.2 Economy Class - Correlation with Average Rating
- **Cabin Staff Service:** **0.84**  
- **Seat Comfort:** **0.86**  
- **Value for Money:** **0.91**  
- **Food & Beverages:** **0.82**  
- **Ground Service:** **0.71**  
- **Wi-Fi & Connectivity:** **0.64**

**Takeaway:** Economy satisfaction is driven by **staff service, seat comfort, and value perception**; food matters, while Wi-Fi and ground service are less decisive.

### 3.3 Non-Economy Class - Correlation with Average Rating
- **Seat Comfort:** **0.86**  
- **Value for Money:** **0.91**  
- **Food & Beverages:** **0.78**  
- **Cabin Staff Service:** **0.76**  
- **Ground Service:** **0.83**

**Takeaway:** Premium travelers are **highly sensitive to comfort and dining**; value remains critical, and **ground service** is relatively influential.

### 3.4 Route & Aircraft Highlights
- **Top routes reviewed:** New York ↔ Atlanta, San Diego ↔ Atlanta, Los Angeles ↔ New York (ratings span ~**1.9 - 3.9**).  
- **Aircraft models:** Majority **Unknown (~82%)**; among known, **Boeing 767/737** appear most.

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
- **Technical:** ~20 Snowflake SQL queries; Mode dashboards with drill-downs.  
- **Analytical:** Economy vs Non-Economy segmentation reveals distinct drivers.  
- **Communication:** Converted correlations into actionable initiatives.

---

## 6. Limitations
- Delta-only (no competitor benchmark).  
- **Correlation ≠ causation**; ops factors (delays, aircraft age) excluded.  
- No predictive modeling yet.

---

## 7. Next Steps
- **Benchmark** United and American for relative positioning.  
- Run **sentiment analysis** on review text for themes.  
- Build **predictive models** (e.g., logistic regression for recommend likelihood).  
- Integrate **operations data** (delays, cancellations, aircraft age).  
- **Automate** Mode pipelines for monthly refresh.
