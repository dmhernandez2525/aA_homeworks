DROP TABLE cats CASCADE ;
CREATE TABLE cats (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255), 
    color VARCHAR(255),
    breed VARCHAR(255)

);
DROP TABLE toys CASCADE;
CREATE TABLE toys (
    id SERIAL PRIMARY KEY,
    price INTEGER,
    color VARCHAR(255),
    name VARCHAR(255)

);

DROP TABLE cattoys CASCADE;
CREATE TABLE cattoys (
    id SERIAL PRIMARY KEY,
    cat_id INTEGER,
    toy_id INTEGER,
    FOREIGN KEY (toy_id) REFERENCES toys(id),
    FOREIGN KEY (cat_id) REFERENCES cats(id)
);


INSERT INTO
    cats (name, color, breed)
VALUES
    ('Pumpkin', 'orange', 'Birman'),
    ('Jasmine', 'white', 'American-short-hair'), 
    ('Ace', 'black', 'Maine-coon'),
    ('Leo', 'grey', 'Persian'),
    ('Lolita', 'white', 'Ragdoll');




    
INSERT INTO
    toys(price,color,name)
VALUES
    (100,'BLUE','fancy ball'),
    (1,'RED','generic fancy ball'),
    (1000,'BLACK','string'),
    (25,'YELLOW','box'),
    (35,'GREEN','toy snake');


INSERT INTO
    cattoys (cat_id, toy_id)
VALUES
    (1, 5),
    (2, 4),
    (5, 2),
    (4, 1),
    (3, 3);


    






  
