select count(id), installed from `bq-demo01.bq_demo_ds.cycle_stations_part`
WHERE
  _PARTITIONTIME > TIMESTAMP_SUB(TIMESTAMP('2016-04-15'), INTERVAL 1 DAY)
  group by installed;


-- non part

select count(id), installed from `bq-demo01.bq_demo_ds.cycle_stations_part`
WHERE
  _PARTITIONTIME > TIMESTAMP_SUB(TIMESTAMP('2016-04-15'), INTERVAL 1 DAY)
  group by installed;