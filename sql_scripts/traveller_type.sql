SELECT
  r.type_of_traveller,
  COUNT(*) AS total_reviews
FROM MARTS.FCT_REVIEW_ENRICHED r
WHERE r.airline = 'Delta Air Lines'
  AND r.type_of_traveller IS NOT NULL
GROUP BY r.type_of_traveller
ORDER BY total_reviews DESC;
