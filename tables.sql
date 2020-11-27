------------------------------------------------------------------------ 
--Drop Tables
------------------------------------------------------------------------ 
DROP TABLE restaurants CASCADE;
DROP TABLE categories CASCADE;
DROP TABLE items CASCADE;
DROP TABLE nutrition CASCADE;

------------------------------------------------------------------------ 
--Create Tables
------------------------------------------------------------------------ 
CREATE TABLE restaurants
(id INT NOT NULL,
 name VARCHAR,
 PRIMARY KEY (id));
 
 CREATE TABLE categories
(id INT NOT NULL,
 category VARCHAR,
 PRIMARY KEY (id));

 --The dept_emp table has only two columns with redundant identifiers (adding composite key)
 CREATE TABLE items
(id INT NOT NULL,
 item VARCHAR,
 PRIMARY KEY (id));
 
 CREATE TABLE nutrition
(restaurant id INT NOT NULL,
 category id INT NOT NULL,
 item id INT NOT NULL,
 serving size (oz), INT,
 serving size (g), INT,
 calories, INT,
 calories from fat, INT,
 total fat (g), INT,
 total fat (% daily value), INT,
 saturated fat (g), INT,
 saturated fat (% daily value), INT,
 trans fat (g), INT,
 cholesterol (mg), INT,
 cholesterol(% daily value), INT,
 sodium (mg), INT,
 sodium (% daily value), INT,
 carbohydrates (% daily value), INT,
 dietary fiber (g), INT,
 dietary fiber (% daily value), INT,
 sugars (g), INT,
 protein (g), INT,
 vitamin a (% daily value), INT,
 vitamin c (% daily value), INT,
 calcium (% daily value), INT,
 iron (% daily value), INT,
 PRIMARY KEY (restaurant id, category id, item id));
 
 
------------------------------------------------------------------------ 
--IMPORT DATA INTO TABLES
------------------------------------------------------------------------ 

------------------------------------------------------------------------ 
--Add Foreign Keys
------------------------------------------------------------------------ 
ALTER TABLE nutrition
ADD FOREIGN KEY (restaurant id) REFERENCES restaurants (id);
 
ALTER TABLE nutrition
ADD FOREIGN KEY (category id) REFERENCES categories (id);
 
ALTER TABLE nutrition
ADD FOREIGN KEY (item id) REFERENCES items (id;
