SELECT
  r.date_flown_id                  AS year,
  ROUND(AVG(r.average_rating), 2)        AS avg_rating,
  ROUND(AVG(r.value_for_money), 2)       AS avg_money_value
FROM MARTS.FCT_REVIEW_ENRICHED r
WHERE r.airline LIKE 'Delta Air Lines'
  AND r.date_flown_id IS NOT NULL
GROUP BY r.date_flown_id
ORDER BY year;
