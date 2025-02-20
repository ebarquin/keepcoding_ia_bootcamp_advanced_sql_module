SELECT 
  calls_ivr_id,
  MAX(
    CASE 
      WHEN NULLIF(module_name, 'UNKNOWN') = 'AVERIA_MASIVA' THEN 1 
      ELSE 0 
    END
  ) AS flag_averia_masiva
FROM keepcoding.ivr_detail
GROUP BY calls_ivr_id;