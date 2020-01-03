SELECT
  floor(coffees_consumed/43200)*43200 AS "time",
  sum(coffees_consumed) AS "cc"
FROM consumption
GROUP BY 1
ORDER BY 1