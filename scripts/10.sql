select 
  calls_ivr_id,
  max(case when step_name = 'CUSTOMERINFOBYDNI.TX' and step_result = 'OK' then 1 else 0 end) as flag_identified_by_dni
from keepcoding.ivr_detail
group by calls_ivr_id;