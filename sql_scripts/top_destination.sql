SELECT
  d.city AS destination_city,
  COUNT(*) AS num_reviews
FROM MARTS.FCT_REVIEW_ENRICHED r
JOIN MARTS.DIM_LOCATION d
  ON r.destination_location_id = d.location_id
WHERE r.airline = 'Delta Air Lines'
  AND d.city IS NOT NULL
GROUP BY d.city
ORDER BY num_reviews DESC
LIMIT 10;
