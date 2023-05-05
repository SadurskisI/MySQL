use hr;


-- Вывести зарплату сотрудника с именем ‘Lex’ и фамилией ‘De Haan'. 
SELECT 
	salary
FROM
	employees
WHERE first_name LIKE 'Lex'
AND last_name LIKE 'De Haan';

-- Вывести всех сотрудников с jobid ‘FIACCOUNT’ и зарабатывающих меньше 8000.

SELECT  
	*
FROM 
	employees
WHERE job_id LIKE 'FI_ACCOUNT'
AND salary < 8000;

-- Вывести сотрудников, у которых в фамилии в середине слова встречаются сочетания ‘kk’ или ‘ll’.

SELECT
	*
FROM 
	employees
WHERE last_name LIKE '%kk%' 
OR last_name LIKE'%ll%';

-- Вывести сотрудников с commission_pct NULL.

SELECT 
	*
FROM 
	employees
WHERE commission_pct IS NULL;

-- Вывести всех сотрудников кроме тех, кто работает в департаментах 80 и 110.

SELECT 
	*
FROM 
	employees
WHERE department_id != 80 
AND  department_id != 110;

-- Вывести сотрудников зарабатывающих от 5000 до 7000 (включая концы)

SELECT 
	*
FROM 
	employees
WHERE salary BETWEEN 5000 AND 7000;








 