-- SELECT brand, model, year, condition, price FROM cars
-- 	WHERE condition >= 3
-- 	AND year < 1970
-- 	AND price < 100000;

-- SELECT brand, model, condition, price FROM cars
-- 	WHERE (price < 250000
-- 	OR brand = 'Porsche')
-- 	AND condition > 3;

-- SELECT brand, model, color, year, price, sold FROM cars
-- 	WHERE (color LIKE '%red%'
-- 	OR year BETWEEN 1960 AND 1969)
-- 	AND sold IS FALSE;

-- SELECT brand, model, condition, year FROM cars
-- 	WHERE year IN (1961, 1963, 1965, 1967, 1969)
-- 	AND condition >= 3
-- 	AND sold IS FALSE;

-- SELECT brand, model, price, sold FROM cars
-- 	WHERE (
-- 		brand NOT IN ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
-- 		OR price < 50000
-- 	) AND sold IS FALSE;

-- SELECT brand, model,color, sold FROM cars
--  WHERE color NOT IN ('red', 'blue', 'white')
--   AND brand NOT IN ('Aston Martin', 'Bentley', 'Jaguar')
-- 	 AND sold IS FALSE;

/*
	Select brand, model, year, sold from cars
		where the brand is 'Dodge' and year is in the 60s
		or the brand is either 'Ford' or 'Triumph' and the car is from the 70s
		only select cars where sold is not true
*/
-- SELECT brand, model, year, sold FROM cars
-- WHERE ((brand = 'Dodge' AND year BETWEEN 1960 AND 1969)
-- OR (brand IN ('Ford' , 'Triumph' ) AND year BETWEEN 1970 AND 1979))
--  AND sold is FALSE;

-- SELECT brand, model, year FROM cars
-- 	ORDER BY brand DESC, year;   //sort brands in decending order and then any cars which has the same brand sort by the year

/*
	Select the brand, model, condition and price from cars
		order the table by condition in descending order
		and by price in ascending order
*/

-- SELECT brand, model, condition, price FROM cars
-- -- 	ORDER BY condition DESC, price;

-- SELECT brand, model, color, price FROM cars
--  WHERE color LIKE '%red%'
--  AND sold is FALSE 
--  ORDER BY price 
--  limit 5;

-- SELECT COUNT(*) AS total_sold FROM cars
-- 	WHERE sold IS TRUE;

--     SELECT SUM(price) AS total_earnings FROM cars
-- 	WHERE sold IS TRUE;

-- SELECT FLOOR(AVG(price)) AS average FROM cars
-- 	WHERE brand = 'Bentley'; 

-- SELECT brand, COUNT(brand) AS brand_count FROM cars
-- GROUP BY brand


-- group by
-- SELECT brand ,
--  count(brand) AS brand_count,
--   floor(AVG(price)) AS AVG FROM cars
-- 	where sold is FAlSE
-- 	group by brand;


/*
	Select:
		* year
		* a count of cars from that year, aliased as car_count
		* the maximum price
		* the minimum price
	from the table cars
		where the car has been sold
	group by year
		only show years where more than one car has been sold from that year
	order the result by car_count
*/
-- SELECT year, COUNT(year) AS car_count,
--  MAX(price) AS Max_Price,
--  MIN(price) AS MIN_Price FROM cars
--   where sold is TRUE
-- 	GROUP BY year
-- 	-- having count(year) > 1 ;

-- INSERT INTO cars (
-- 	brand, model, year, price, color, condition, sold
-- ) VALUES (
-- 	'Chevrolet', 'Bel Air', 1955, 50000, 'purple', 5, FALSE
-- ),(
-- 	'Porsche', '944_Turbo', 1986, 48000, 'white', 4, FALSE
-- ),(
-- 	'tata', '944_Turbo', 1986, 48000, 'white', 4, FALSE
-- );

UPDATE cars SET 
  condition = 1,
	price = 10000

where brand = 'Porsche' AND sold is false