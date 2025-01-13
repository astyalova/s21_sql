CREATE OR REPLACE FUNCTION fnc_fibonacci(pstop integer DEFAULT 10)
RETURNS TABLE(nums int) AS $$
    SELECT (POWER(((1 + sqrt(5)) / 2), num) + POWER(((1 - sqrt(5)) / 2), num)) / sqrt(5) AS fib
    FROM (SELECT ROW_NUMBER() over () AS num FROM generate_series(0, pstop)) as n
    WHERE (POWER(((1 + sqrt(5)) / 2), num) + POWER(((1 - sqrt(5)) / 2), num)) / sqrt(5) < pstop;
    $$ LANGUAGE sql;

SELECT *
FROM fnc_fibonacci(100);

SELECT *
FROM fnc_fibonacci();
