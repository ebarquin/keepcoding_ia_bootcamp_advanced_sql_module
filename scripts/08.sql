select 
  calls_ivr_id,
  max(case when module_name = 'AVERIA_MASIVA' then 1 else 0 end) as flag_averia_masiva,
from keepcoding.ivr_detail
group by calls_ivr_id;