-- update
UPDATE toys
SET color = 'brown'
WHERE color = 'RED';

delete from 
cats 
WHERE 
cats.name = 'Leo'; 


EXPLAIN
select 
* 
from 
cats
where 
cats.name = 'Leo';


EXPLAIN
select 
 cats.name ,toys.name
 from 
 toys 
 join cattoys on toys.id = cattoys.toy_id
 join cats on cattoys.cat_id = cats.id
 where cats.name = 'Leo';



-- updating a cat
    EXPLAIN
    UPDATE cats 
    SET color = 'b'
    WHERE color = 'white';

-- deleting a toy
    EXPLAIN
    DELETE FROM
    toys
    WHERE id = 2;


-- inserting into the cattoys table.
    EXPLAIN
    insert into
    cats (name,color,breed)
    values
    ('cvfb','bfbd','fghfcggfng');

    EXPLAIN
    select 
    breed 
    from 
    cats
    where 
    cats.name = 'Noel';


    EXPLAIN ANALYZE
    SELECT 
        toys.name
    FROM 
        toys 
    JOIN  
        cattoys ON toys.id = cattoys.toy_id 
    JOIN 
        cats ON cats.id = cattoys.cat_id 
    WHERE 
        cats.name = 'Freyja';

    EXPLAIN ANALYZE
    SELECT
        toys.name AS toys_name, cats.name
    FROM 
        toys 
    JOIN 
        cattoys ON toys.id = cattoys.toy_id 
    JOIN 
        cats ON cats.id = cattoys.cat_id 
    WHERE 
        cats.color = 'Red' AND toys.color = 'Red';

    EXPLAIN ANALYZE
    SELECT
        toys.name AS toys_name, cats.name
    FROM 
        toys 
    JOIN 
        cattoys ON toys.id = cattoys.toy_id 
    JOIN 
        cats ON cats.id = cattoys.cat_id 
    WHERE 
        cats.breed = 'British Shorthair' 

    select 
    *
    from 
    toys
    where price < 10; 
        
        
    ;





