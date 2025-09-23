SELECT
  o.city AS origin_city,
  d.city AS destination_city,
  COUNT(*) AS reviews_count,
  ROUND(AVG(r.AVERAGE_RATING), 2) AS avg_rating
FROM
  MARTS.FCT_REVIEW_ENRICHED r
  JOIN MARTS.DIM_LOCATION o ON r.origin_location_id = o.location_id
  JOIN MARTS.DIM_LOCATION d ON r.destination_location_id = d.location_id
WHERE
  r.airline = 'Delta Air Lines'
  AND o.city IS NOT NULL
  AND d.city IS NOT NULL
GROUP BY
  d.city,
  o.city
ORDER BY
  reviews_count DESC
LIMIT
  10;