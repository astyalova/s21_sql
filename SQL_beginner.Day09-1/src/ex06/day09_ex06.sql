--FIRST
CREATE OR REPLACE FUNCTION fnc_person_visits_and_eats_on_date(IN pperson VARCHAR DEFAULT 'Dmitriy',
                                                              IN pprice numeric DEFAULT 500,
                                                              IN pdate DATE DEFAULT '2022-01-08')
    RETURNS TABLE(name VARCHAR) AS $$
    BEGIN
        RETURN QUERY SELECT pizzeria.name FROM person_visits
            JOIN pizzeria ON pizzeria.id = pizzeria_id
            JOIN menu ON menu.pizzeria_id = pizzeria.id
            JOIN person ON person.id = person_id
            WHERE person.name = pperson AND price < pprice AND visit_date = pdate;
    END;
$$ LANGUAGE plpgsql;


select *
from fnc_person_visits_and_eats_on_date(pprice := 800);

select *
from fnc_person_visits_and_eats_on_date(pperson := 'Anna',pprice := 1300,pdate := '2022-01-01');
--SECOND
SELECT pizzeria.name FROM person_visits
    JOIN person ON person.id = person_id
    JOIN pizzeria ON pizzeria.id = pizzeria_id
    JOIN menu ON menu.pizzeria_id = pizzeria.id
WHERE person.name = 'Dmitriy' AND price < 800 AND visit_date = '2022-01-08';

