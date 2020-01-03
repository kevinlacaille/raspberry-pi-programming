SELECT
  time_column as "time",
  value1
FROM
  metric_table
WHERE
  time_column BETWEEN '2019-11-13T05:00:00:00Z' AND '2020-01-11T04:59:59Z'
