SELECT
  date AS "time",
  avg(coffees_consumed) OVER (ORDER BY date ROWS 10 PRECEDING) AS "Moving Average"
FROM consumption
WHERE
  date BETWEEN '2019-11-13T05:00:00Z' AND '2020-01-11T04:59:59Z'
ORDER BY 1