select 
cal.ivr_id,
coalesce(array_agg(case when det.customer_phone <> 'UNKNOWN' then det.customer_phone end)[OFFSET (0)], 'UNKNOWN') as customer_phone
from keepcoding.ivr_calls cal
left join keepcoding.ivr_detail det
on cal.ivr_id = det.calls_ivr_id
group by cal.ivr_id;