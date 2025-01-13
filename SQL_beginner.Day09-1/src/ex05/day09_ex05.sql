DROP FUNCTION fnc_persons_female();
DROP FUNCTION fnc_persons_male();

CREATE OR REPLACE FUNCTION fnc_persons(pgender VARCHAR DEFAULT 'female')
    RETURNS SETOF person AS $$
        SELECT * FROM person WHERE gender = (
            CASE
                WHEN pgender = 'female' THEN 'female'
            WHEN pgender = 'male' THEN 'male'
            END)
$$ LANGUAGE sql;

select *
from fnc_persons(pgender := 'male');
select *
from fnc_persons();

