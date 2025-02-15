-- Me quedo con el id de la llamada y el primer elemento no nulo de cada array asumiendo que el tipo de documento y su numero será unico para cada llamada. 
SELECT 
  calls_ivr_id,
  array_agg(case when document_type <> 'UNKNOWN' then document_type end)[OFFSET (0)] as document_type,
  array_agg(case when document_identification <> 'UNKNOWN'then document_identification end)[OFFSET(0)] as document_identification
from keepcoding.ivr_detail
where document_type <> 'UNKNOWN'and document_identification <> 'UNKNOWN'
group by calls_ivr_id;