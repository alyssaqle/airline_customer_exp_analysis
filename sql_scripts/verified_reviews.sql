SELECT
    SUM(IFF(r.verified = 1, 1, 0)) * 1.0 / COUNT(*) AS pct_verified
FROM MARTS.FCT_REVIEW_ENRICHED r
WHERE r.airline = 'Delta Air Lines';



