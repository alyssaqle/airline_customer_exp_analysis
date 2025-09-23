SELECT
  r.seat_type,
  COUNT(*) AS seat_count,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS pct_share
FROM MARTS.FCT_REVIEW_ENRICHED r
WHERE r.seat_type IS NOT NULL
  AND r.airline = 'Delta Air Lines'
GROUP BY r.seat_type
ORDER BY seat_count DESC;

