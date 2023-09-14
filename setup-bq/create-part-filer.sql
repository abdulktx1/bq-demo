CREATE TABLE mydataset.newtable (customer_id INT64, date1 DATE)
PARTITION BY
  RANGE_BUCKET(customer_id, GENERATE_ARRAY(0, 100, 10))
  OPTIONS (
    require_partition_filter = TRUE);