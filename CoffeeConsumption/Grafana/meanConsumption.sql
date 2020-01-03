SELECT
  floor(extract(epoch from date)/2.20752e+08)*2.20752e+08 AS "time",
  avg(coffees_consumed) AS "Average"
FROM consumption
WHERE
  date BETWEEN '2019-11-13T05:00:00Z' AND '2020-01-11T04:59:59Z'
GROUP BY 1
ORDER BY 1