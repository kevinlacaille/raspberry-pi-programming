SELECT
  date AS "time",
  sum(coffees_consumed) OVER (ORDER BY date) AS "Cumulative"
FROM consumption
ORDER BY 1