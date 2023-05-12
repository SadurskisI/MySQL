--  1. Создать таблицу students с полями:
-- name (не null)
-- lastname (не null)
-- avg_mark (от 0 до 5)
-- gender varchar(128) (или “M” или “F”)

DROP TABLE IF EXISTS students;
CREATE TABLE students
(name varchar(128) not null,
lastname varchar(128) not null,
avg_mark decimal(2,1),
check(avg_mark between 0 and 5),
gender varchar(128),
check(gender in ('M', 'F'))
);

-- 2. Добавить 5 записей студентов
-- Олег Петров 4.3 M
-- Семен Степанов 3.1 M 
-- Ольга Семенова 4.7 F 
-- Игорь Романов 3.1 M 
-- Ирина Иванова 2.2 F

INSERT INTO students(name,lastname,avg_mark,gender) VALUES 
					('Олег', 'Петров', 4.3, 'M'),
					('Семен', 'Степанов', 3.1, 'M'),
					('Ольга', 'Семенова', 4.7, 'F'),
					('Игорь', 'Романов', 3.1, 'M'),
					('Ирина', 'Иванова', 2.2, 'F');

SELECT * FROM students;

-- 3. Добавить поле id integer primary key auto_increment
-- 4. Поменять тип у gender на char(1)
-- 5. переименовать поле name на firstname

ALTER TABLE students
ADD id integer primary key auto_increment;

ALTER TABLE students
MODIFY COLUMN gender char(1);

ALTER TABLE students
RENAME COLUMN name TO firstname;

-- -- -- -- 
-- найти учеников, у которых оценка больше 4

SELECT * FROM students
WHERE avg_mark > 4;

-- найти учеников, у которых не входит в диапазон от 3 до 4
SELECT * FROM students
WHERE avg_mark NOT BETWEEN 3 AND 4;

-- найти учеников, у которых имя начинается на И
SELECT * FROM students
WHERE firstname LIKE 'И%';

-- найти учеников, у которых оценка 2.2 или 3.1 или 4.7
SELECT * FROM students
WHERE avg_mark = 2.2 OR 3.1 OR 4.7;


-- 7.Создать представление, которое содержит всех мужчин
DROP VIEW IF EXISTS v_students_M;
CREATE VIEW v_students_M AS
	SELECT * FROM students
WHERE gender LIKE 'M';

-- 8. Создать представление, которое содержит всех женщин
DROP VIEW IF EXISTS v_students_F;
CREATE VIEW v_students_F AS
	SELECT * FROM students
WHERE gender LIKE 'F';

-- 9. Увеличить всем учащимся оценку в 10 раз
ALTER TABLE students
MODIFY avg_mark decimal(3,1);

ALTER TABLE students   
DROP CONSTRAINT students_chk_1; 

UPDATE students
SET avg_mark = avg_mark*10;

-- 10.  Поменяйте у Олега Петрова фамилию на Сидоров

UPDATE students
SET lastname = 'Сидоров'
WHERE lastname LIKE 'Петров';

-- 11.  Для всех учеников, у которых оценка не больше 31 увеличить на 10

UPDATE students
SET avg_mark = avg_mark + 10
WHERE avg_mark <= 31;










