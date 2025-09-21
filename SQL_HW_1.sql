-- Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_mame varchar(50) not null
);

-- Наполнить таблицу employee 70 строками.

insert into employees (employee_name)
values ('Валерия Фокина'),
('Елизавета Русанова'),
('Валерия Павлова'),
('Евгений Иванов'),
('Аделина Смирнова'),
('Камилла Михайлова'),
('Таисия Кравцова'),
('Ярослав Ефремов'),
('Артемий Семенов'),
('Роман Логинов'),
('Дмитрий Гусев'),
('Ксения Крылова'),
('Марк Максимов'),
('Герман Верещагин'),
('Александра Козлова'),
('Анна Шульгина'),
('Василиса Гусева'),
('Евгения Родина'),
('Кира Сахарова'),
('Владимир Семенов'),
('Демид Антонов'),
('Алёна Куликова'),
('Владимир Коровин'),
('Илья Кузнецов'),
('Тимофей Ковалев'),
('Анастасия Орлова'),
('Евгения Егорова'),
('Максим Фадеев'),
('Сергей Зайцев'),
('Андрей Степанов'),
('Дарья Сергеева'),
('Таисия Петрова'),
('Артём Муравьев'),
('Анна Денисова'),
('Кира Мартынова'),
('Анастасия Васильева'),
('Елизавета Хомякова'),
('Василиса Глушкова'),
('Тимофей Алексеев'),
('Юрий Петров'),
('Милана Медведева'),
('Дарья Захарова'),
('Адам Романов'),
('Александр Воробьев'),
('Владимир Зубков'),
('Диана Вавилова'),
('Ольга Тихонова'),
('Павел Петров'),
('Артём Шмелев'),
('Матвей Петров'),
('Алина Соловьева'),
('Артём Гуляев'),
('Михаил Егоров'),
('Софья Никифорова'),
('Иван Смирнов'),
('Виктория Филиппова'),
('Мария Мартынова'),
('Кира Борисова'),
('Никита Власов'),
('Олег Поляков'),
('Матвей Богданов'),
('Аделя Глебова'),
('София Горюнова'),
('Элина Павлова'),
('Александра Белова'),
('Илья Петров'),
('Ксения Денисова'),
('Алексей Медведев'),
('Кирилл Лобанов'),
('Дарья Боброва')

;

-- Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null

create table salary(
	id serial primary key,
	monthly_salary int not null
);

-- Наполнить таблицу salary 16 строками:
/* - 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500
*/


insert into salary(monthly_salary)
values 	(1000),
		(1100),
		(1200),
		(1300),
		(1400),
		(1500),
		(1600),
		(1700),
		(1800),
		(1900),
		(2000),
		(2100),
		(2200),
		(2300),
		(2400),
		(2500)
;

-- Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null


create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null)
;

-- Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id)
values (10, 7),
		(20, 4),
		(50, 9),
		(58, 13),
		(21, 4),
		(19, 2),
		(37, 10),
		(48, 11),
		(51, 4),
		(61, 1),
		(27, 7),
		(7, 7),
		(8, 4),
		(86, 9),
		(90, 5),
		(49, 4),
		(45, 2),
		(34, 10),
		(30, 1),
		(28, 4),
		(17, 7),
		(56, 2),
		(77, 10),
		(55, 9),
		(88, 4),
		(70, 1),
		(67, 7),
		(63, 5),
		(66, 11)
;

-- Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);

-- Поменять тип столба role_name с int на varchar(30)

ALTER TABLE roles
ALTER COLUMN role_name
TYPE varchar(30)
;

-- Наполнить таблицу roles 20 строками:

insert into roles(role_name)
values ('Junior Python developer'),
		('Middle Python developer'),
		('Senior Python developer'),
		('Junior Java developer'),
		('Middle Java developer'),
		('Senior Java developer'),
		('Junior JavaScript developer'),
		('Middle JavaScript developer'),
		('Senior JavaScript developer'),
		('Junior Manual QA engineer'),
		('Middle Manual QA engineer'),
		('Senior Manual QA engineer'),
		('Project Manager'),
		('Desinger'),
		('HR'),
		('CEO'),
		('Sales manager'),
		('Junior Automation QA engineer'),
		('Middle Automation QA engineer'),
		('Senior Automation QA engineer')
;


/*Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
*/

create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id) references employees(id),   
	role_id int not null,
	foreign key (role_id) references roles(id))
	;

-- Наполнить таблицу roles_employee 40 строками:

insert into roles_employee(employee_id, role_id)
values (1, 2),
		(14, 4),
		(3, 9),
		(13, 13),
		(9, 9),
		(18, 20),
		(19, 19),
		(29, 16),
		(25, 14),
		(37, 12),
		(32, 17),
		(31, 17),
		(20, 14),
		(24, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 10),
		(22, 11),
		(21, 4),
		(35, 1),
		(6, 14),
		(7, 12),
		(8, 18),
		(27, 19),
		(70, 20),
		(49, 4),
		(45, 2),
		(34, 10),
		(30, 15),
		(28, 16),
		(17, 7),
		(56, 2),
		(69, 10),
		(55, 9),
		(60, 14),
		(51, 11),
		(67, 17),
		(63, 5),
		(66, 11)
;

-- Bye.