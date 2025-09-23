SELECT
  r.date_flown_id                   AS year,
  ROUND(AVG(r.ground_service), 2)         AS avg_ground_service,
  ROUND(AVG(r.cabin_staff_service), 2)    AS avg_cabin_staff_service
FROM MARTS.FCT_REVIEW_ENRICHED r
WHERE r.airline LIKE 'Delta Air Lines'
  AND r.date_flown_id IS NOT NULL
GROUP BY r.date_flown_id
ORDER BY year;
