select 
cal.ivr_id,
coalesce(array_agg(case when det.billing_account_id <> 'UNKNOWN' then det.billing_account_id end)[OFFSET (0)], 'UNKNOWN') as billing_account_id
from keepcoding.ivr_calls cal
left join keepcoding.ivr_detail det
on cal.ivr_id = det.calls_ivr_id
group by cal.ivr_id;