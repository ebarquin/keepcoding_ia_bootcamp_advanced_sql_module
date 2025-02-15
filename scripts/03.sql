CREATE OR REPLACE TABLE keepcoding.ivr_detail as
SELECT
  cal.ivr_id as calls_ivr_id,
  cal.phone_number as calls_phone_number,
  cal.ivr_result as calls_ivr_result,
  cal.vdn_label as calls_vdn_label,
  cal.start_date as calls_start_date,
  format_date('%Y%m%d',cal.start_date) as start_date_id,
  cal.end_date as calls_end_date,
  format_date('%Y%m%d',cal.end_date) as end_date_id,
  cal.total_duration as calls_total_duration,
  cal.customer_segment as calls_customer_segment,
  cal.ivr_language as calls_ivr_languaje,
  cal.steps_module as calls_steps_module,
  cal.module_aggregation as calls_module_aggregation,
  mod.module_sequece as module_sequece,
  mod.module_name as module_name,
  mod.module_duration as module_duration,
  mod.module_result as module_result,
  ste.step_sequence as  step_sequence,
  ste.step_name as step_name,
  ste.step_result as step_result,
  ste.step_description_error as step_description_error,
  ste.document_type as document_type,
  ste.document_identification as document_identification,
  ste.customer_phone as customer_phone,
  ste.billing_account_id as billing_account_id,
FROM keepcoding.ivr_calls cal
left join keepcoding.ivr_modules mod
on cal.ivr_id = mod.ivr_id
left join keepcoding.ivr_steps ste
on cal.ivr_id = ste.ivr_id;