delete from `bq-demo01.bq_demo_time_travel.trips_data_time_travel`
where  DATE(trip_start_timestamp) between '2016-01-01' AND '2016-05-01'