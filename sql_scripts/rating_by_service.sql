
WITH averages AS (
  SELECT
    ROUND(AVG(seat_comfort), 2)           AS seat_comfort,
    ROUND(AVG(cabin_staff_service), 2)    AS cabin_staff_service,
    ROUND(AVG(food_and_beverages), 2)     AS food_and_beverages,
    ROUND(AVG(inflight_entertainment), 2) AS inflight_entertainment,
    ROUND(AVG(ground_service), 2)         AS ground_service,
    ROUND(AVG(wifi_and_connectivity), 2)  AS wifi_and_connectivity,
    ROUND(AVG(value_for_money), 2)        AS value_for_money
  FROM MARTS.FCT_REVIEW_ENRICHED
  WHERE AIRLINE LIKE 'Delta Air Lines'
)
SELECT category, avg_score
FROM averages
UNPIVOT(avg_score FOR category IN (
  seat_comfort,
  cabin_staff_service,
  food_and_beverages,
  inflight_entertainment,
  ground_service,
  wifi_and_connectivity,
  value_for_money
));
