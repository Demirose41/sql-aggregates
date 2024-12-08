SELECT COUNT(*) AS total_cats FROM cats;

SELECT MIN(birth_year) AS oldest, name FROM cats;

SELECT MAX(birth_year) AS youngest, name FROM cats;

-- Bonus

SELECT cats.name ,COUNT(*) AS toy_count 
FROM toys 
JOIN cats 
  ON toys.cat_id = cats.id 
GROUP BY cats.name;

SELECT cats.name ,COUNT(*) AS toy_count 
FROM toys 
JOIN cats ON toys.cat_id = cats.id 
GROUP BY cats.name 
HAVING toy_count > 1;

