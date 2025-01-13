SELECT  gen_ser :: date AS missed_days
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day' :: interval)AS gen_ser
LEFT JOIN person_visits ON(gen_ser.date = visit_date AND (person_id = 1 OR person_id = 2))
WHERE person_id IS NULL
ORDER BY missed_days
