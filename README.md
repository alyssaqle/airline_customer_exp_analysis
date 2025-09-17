# Delta Airline Customer Experience Analysis

## 1. Overview
**Scope:** 2,900 Delta Airlines reviews from 2010–2023, sourced from AirlineQuality.com.  
**Goal:** Identify key drivers of Delta’s customer satisfaction and convert them into targeted improvement actions.  
**Method:**
- SQL (Snowflake) for extraction, cleaning, and joining fact/dimension tables (star schema)  
- Python (Pandas, Seaborn) for exploratory analysis and correlation heatmaps  
- Mode Analytics for interactive dashboarding and visualization  

**Top Insights:**
- Weak sentiment: Average rating of **2.48/5** with only **28.8% recommendation rate** highlights substantial improvement opportunities.  
- In **Economy**, Cabin Staff Service and Food & Beverages are the strongest satisfaction drivers.  
- In **Non-Economy**, Seat Comfort and Food & Beverages emerge as critical; small shortcomings significantly reduce satisfaction.  

---

## 2. Data Processing and Analysis Workflow

### 2.1 Data
- Loaded 2.9K Delta reviews into Snowflake using SQL queries.  
- Validated schema across dimensions (aircraft, customer, location) to ensure consistency.  

### 2.2 Cleaning
- Normalized seat type, traveller type, aircraft manufacturer/model, and city/route names.  
- Addressed nulls (e.g., “Unknown” for some cities/aircraft).  

### 2.3 Feature Preparation
- Created flags for **verified vs unverified reviews** (48% verified).  
- Segmented **Economy vs Non-Economy cabins**.  
- Enriched with **origin–destination route joins** via `DIM_LOCATION`.  

### 2.4 Modeling/Analysis
- Correlation analysis of service factors (seat comfort, food, staff, WiFi, etc.) by class.  
- Segmented analysis into Economy and Non-Economy.  

### 2.5 Validation
- Verified distributions to avoid skew (e.g., economy-heavy sample at 78%).  
- Balanced insights across verified/unverified reviews.  

### 2.6 Visualization
- Built Mode dashboards with KPIs (reviews, ratings, recommendation rate).  
- Added dynamic filters for year, traveller type, seat type, and route.  
- Used heatmaps to visualize correlations.  

---

## 3. Insights

### 3.1 Economy Class
- Cabin Staff Service and Food & Beverages most strongly drive satisfaction.  
- Seat Comfort and Ground Service are secondary levers; improving long-haul seat comfort could boost satisfaction.  
- Positive relationship between staff service and food quality mirrors long-haul service expectations.  

### 3.2 Non-Economy Classes
- Seat Comfort and Food & Beverages are top priorities; premium passengers are highly sensitive to even small declines in comfort or meal quality.  
- Strong link: Poor food ratings correlate with significantly lower overall experience, even when staff service is rated well.  

---

## 4. Recommendations

### 4.1 Economy
- Enhance staff service through training focused on friendliness and attentiveness.  
- Upgrade food offerings with better menu variety and collaborations with quality vendors.  
- Improve seat comfort by upgrading cushions, recline, and legroom on long routes.  

### 4.2 Non-Economy
- Premium dining improvements via partnerships with chefs and premium food suppliers.  
- Seat upgrades to improve space, padding, and adjustability.  
- Customer feedback loop to quickly resolve recurring pain points around food and comfort.  

---

## 5. Key Learnings

**Technical:**
- Authored 20+ SQL queries in Snowflake to extract and transform data in a star schema.  
- Built Mode dashboards with drill-downs and filters.  
- Used Pandas + Seaborn for exploratory correlation analysis.  

**Analytical:**
- Economy vs Non-Economy segmentation revealed distinct satisfaction drivers.  
- Verified correlations between service factors, noting that correlation ≠ causation.  

**Communication:**
- Translated metrics into actionable recommendations for Delta leadership to improve satisfaction and recommendation rates.  

---

## 6. Limitations
- Single airline scope (no competitor benchmarks).  
- No integration yet with external variables (e.g., delays, aircraft age).  
- Correlation-only analysis; no causality modeled.  

---

## 7. Next Steps
- Benchmark against competitors (e.g., United, American Airlines).  
- Expand into text analysis of passenger comments for sentiment and themes.  
- Explore predictive modeling (regression, classification) for satisfaction.  
- Integrate operational data (delays, cancellations, aircraft configs).  
- Build automated monthly pipeline refreshes in Mode.  
