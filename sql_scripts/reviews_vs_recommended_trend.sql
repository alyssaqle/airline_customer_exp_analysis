SELECT
  r.date_flown_id                                   AS year,
  COUNT(*)                                                AS total_reviews,
  ROUND(AVG(IFF(r.recommended, 1, 0)) * 100, 1)           AS pct_recommended
FROM MARTS.FCT_REVIEW_ENRICHED r
WHERE r.airline LIKE 'Delta Air Lines'
  AND r.date_flown_id IS NOT NULL
GROUP BY r.date_flown_id
ORDER BY year;
