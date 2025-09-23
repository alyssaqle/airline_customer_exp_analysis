SELECT
  o.city AS origin_city,
  COUNT(*) AS num_reviews
FROM MARTS.FCT_REVIEW_ENRICHED r
JOIN MARTS.DIM_LOCATION o
  ON r.origin_location_id = o.location_id
WHERE r.airline = 'Delta Air Lines'
  AND o.city IS NOT NULL
GROUP BY o.city
ORDER BY num_reviews DESC
LIMIT 10;
