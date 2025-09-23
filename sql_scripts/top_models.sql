SELECT
  a.aircraft_model,
  COUNT(*) AS review_count
FROM MARTS.FCT_REVIEW_ENRICHED r
JOIN MARTS.DIM_AIRCRAFT a
  ON r.aircraft_id = a.aircraft_id
WHERE r.airline = 'Delta Air Lines'
GROUP BY a.aircraft_model
ORDER BY review_count DESC
LIMIT 10;
