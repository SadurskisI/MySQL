USE airlines;

-- 2.1 TASK

-- SELECT DISTINCT
-- 	model_name,
--     CASE
-- 		WHEN range_value BETWEEN 1000 AND 2500
-- 			THEN 'short-haul'
-- 		WHEN range_value BETWEEN 2500 AND 6000
-- 			THEN 'medium-haul'
-- 		ELSE 'long-haul'
-- 	END AS category
-- FROM airliners;




-- 2.2 TASK 
SELECT DISTINCT
	model_name,
    CASE
		WHEN range_value BETWEEN 1000 AND 2500
			THEN 'short-haul'
		WHEN range_value BETWEEN 2500 AND 6000
			THEN 'medium-haul'
		WHEN range_value  > 6000
			THEN 'long-haul'
		WHEN range_value <= 1000 OR NULL
			THEN 'UNDEFINED'
	END AS category
FROM airliners;
