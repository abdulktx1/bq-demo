create table `bq-demo01.bq_demo_time_travel.trips_data_time_travel` 
PARTITION BY
  DATE_TRUNC(trip_start_timestamp, MONTH)
as 
select * from `bq-demo01.bq_demo_ll.trips_data` 
where DATE(trip_start_timestamp) between '2016-01-01' AND '2018-02-01'