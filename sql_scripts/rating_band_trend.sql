SELECT
  DATE_TRUNC('quarter', r.date_flown_id) AS quarter_start,
  r.rating_band,
  COUNT(*) AS review_count
FROM MARTS.FCT_REVIEW_ENRICHED r
WHERE r.airline LIKE 'Delta Air Lines'
  AND r.date_flown_id IS NOT NULL
  AND r.rating_band IS NOT NULL
GROUP BY quarter_start, r.rating_band
ORDER BY quarter_start, r.rating_band;

