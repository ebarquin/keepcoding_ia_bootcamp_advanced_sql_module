SELECT 
  calls_ivr_id,
  MAX(
    CASE 
      WHEN NULLIF(step_name, 'UNKNOWN') = 'CUSTOMERINFOBYPHONE.TX' 
           AND NULLIF(step_result, 'UNKNOWN') = 'OK' 
      THEN 1 
      ELSE 0 
    END
  ) AS flag_identified_by_phone
FROM keepcoding.ivr_detail
GROUP BY calls_ivr_id;