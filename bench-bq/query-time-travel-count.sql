select count(*) from `bq-demo01.bq_demo_time_travel.trips_data_time_travel`;


SELECT COUNT(*)
FROM `bq-demo01.bq_demo_time_travel.trips_data_time_travel`
FOR SYSTEM_TIME AS OF TIMESTAMP_SUB(CURRENT_TIMESTAMP(), INTERVAL 10 MINUTE);