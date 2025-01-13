WITH days AS (
SELECT gen_ser :: date AS missed_days
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day' :: interval)AS gen_ser)
SELECT missed_days
FROM days
FULL JOIN (SELECT * FROM person_visits WHERE person_id = 1 OR person_id = 2 AND visit_date BETWEEN '2022-01-01' AND '2022-01-10') AS d
ON missed_days = d.visit_date WHERE d.person_id is NULL
ORDER BY missed_days;