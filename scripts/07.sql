SELECT 
  cal.ivr_id,
  COALESCE(
    ARRAY_AGG(
      NULLIF(det.billing_account_id, 'UNKNOWN')
      ORDER BY det.step_sequence DESC
    )[OFFSET(0)], 
    'UNKNOWN'
  ) AS billing_account_id
FROM keepcoding.ivr_calls cal
LEFT JOIN keepcoding.ivr_detail det
ON cal.ivr_id = det.calls_ivr_id
GROUP BY cal.ivr_id;