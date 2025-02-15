select 
  ivr_id,
  phone_number,
  start_date,
  case when timestamp_diff(start_date, LAG(start_date) over (partition by phone_number order by start_date), HOUR) between 1 and 24 
    then 1 
    else 0 
  end as called_last_24h,
  case when timestamp_diff(lead(start_date) over (partition by phone_number order by start_date), start_date, HOUR) between 1 and 24 
    then 1 
    else 0 
  end as called_next_24h

from keepcoding.ivr_calls;