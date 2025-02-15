select 
  cal.ivr_id,
  case when starts_with (cal.vdn_label, 'ATC') then 'FRONT'
    when starts_with (cal.vdn_label, 'TECH') then 'TECH'
    when cal.vdn_label = 'ABSORPTION' then 'ABSORPTION'
    else 'RESTO'
  end vdn_aggregation,
from keepcoding.ivr_calls cal;