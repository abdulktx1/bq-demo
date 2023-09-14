SELECT
  project_id,
  job_id,
  start_time,
  end_time,
  query,
  total_slot_ms,
  total_bytes_processed / 1073741824 AS gbs_processed,
  destination_table.table_id AS destination_table_id
FROM
  `region-us`.INFORMATION_SCHEMA.JOBS_BY_PROJECT
--WHERE DATE(creation_time)=CURRENT_DATE
  where query  like '%taxi%'
order by start_time desc