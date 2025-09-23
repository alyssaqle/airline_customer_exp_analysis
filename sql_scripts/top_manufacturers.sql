SELECT
  a.aircraft_manufacturer,
  COUNT(*) AS review_count
FROM MARTS.FCT_REVIEW_ENRICHED r
JOIN MARTS.DIM_AIRCRAFT a
  ON r.aircraft_id = a.aircraft_id
WHERE r.airline = 'Delta Air Lines'
GROUP BY a.aircraft_manufacturer
ORDER BY review_count DESC;
LIMIT