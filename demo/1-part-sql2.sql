SELECT COUNT(*) AS count_records, end_station_priority_id, duration
FROM `bq-demo01.bq_demo_ds.cycles_hire_partition_month`
WHERE DATE(start_date) BETWEEN '2016-01-01' AND '2016-02-01'
GROUP BY end_station_priority_id, duration
ORDER BY count_records DESC;
