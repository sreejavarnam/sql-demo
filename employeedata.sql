employeesCREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE employees ( id INT AUTO_INCREMENT PRIMARY KEY, 
                         name VARCHAR(100) NOT NULL, 
								 city VARCHAR(50),
								 contact VARCHAR(15) );
								 
INSERT INTO employees (name, city, contact) VALUES
('Alice Johnson', 'New York', '9234567890'),
('Bob Smith', 'Los Angeles', '9234567891'),
('Charlie Brown', 'Chicago', '9234567892'),
('Diana Prince', 'Houston', '9234567893'),
('Edward Norton', 'Phoenix', '9234567894'),
('Fiona Gallagher', 'Philadelphia', '9234567895'),
('George Washington', 'San Antonio', '9234567896'),
('employeesemployees', 'San Diego', '9234567897'),
('Ian Somerhalder', 'Dallas', '9234567898'),
('Jessica Alba', 'San Jose', '9234567899'),
('Karl Urban', 'Austin', '9234567800'),
('Lara Croft', 'Jacksonville', '9234567801'),
('Mike Tyson', 'Fort Worth', '9234567802'),
('Nina Dobrev', 'Columbus', '9234567803'),
('Oscar Wilde', 'San Francisco', '9234567804'),
('Paul Walker', 'Charlotte', '9234567805'),
('Quincy Jones', 'Indianapolis', '9234567806'),
('Rachel Green', 'Seattle', '9234567807'),
('Sam Smith', 'Denver', '9234567808'),
('Tina Fey', 'Washington', '9234567809'),
('Uma Thurman', 'Boston', '9234567810'),
('Victor Hugo', 'El Paso', '9234567811'),
('Wanda Maximoff', 'Nashville', '9234567812'),
('Xander Cage', 'Detroit', '9234567813'),
('Yvonne Strahovski', 'Oklahoma City', '9234567814'),
('Zachary Quinto', 'Las Vegas', '9234567815'),
('Albert Einstein', 'Memphis', '9234567816'),
('Britney Spears', 'Louisville', '9234567817'),
('Chris Pratt', 'Baltimore', '9234567818'),
('David Beckham', 'Milwaukee', '9234567819'),
('Ellen Page', 'Albuquerque', '9234567820'),
('Freddie Mercury', 'Tucson', '9234567821'),
('Gina Rodriguez', 'Fresno', '9234567822'),
('Harry Potter', 'Sacramento', '9234567823'),
('Isabella Swan', 'Kansas City', '9234567824'),
('Jackie Chan', 'Mesa', '9234567825'),
('Kevin Hart', 'Atlanta', '9234567826'),
('Leonardo DiCaprio', 'Omaha', '9234567827'),
('Meryl Streep', 'Raleigh', '9234567828'),
('Natalie Portman', 'Miami', '9234567829'),
('Oprah Winfrey', 'Virginia Beach', '9234567830'),
('Prince Charles', 'Oakland', '9234567831'),
('Queen Elizabeth', 'Minneapolis', '9234567832'),
('Rihanna', 'Tulsa', '9234567833'),
('Scarlett Johansson', 'Arlington', '9234567834'),
('Tom Holland', 'Tampa', '9234567835'),
('Usher Raymond', 'New Orleans', '9234567836'),
('Vin Diesel', 'Wichita', '9234567837'),
('Will Smith', 'Cleveland', '9234567838'),
('Xena Warrior', 'Bakersfield', '9234567839'),
('Yoda Master', 'Aurora', '9234567840');		

SELECT * FROM employees;	

ALTER TABLE employees 
ADD COLUMN email VARCHAR(100);	

UPDATE employees SET email = 'alice.johnson@gmail.com' WHERE id = 1;
UPDATE employees SET email = 'bob.smith@gmail.com' WHERE id = 2;
UPDATE employees SET email = 'charlie.brown@gmail.com' WHERE id = 3;
UPDATE employees SET email = 'diana.prince@gmail.com' WHERE id = 4;
UPDATE employees SET email = 'edward.norton@gmail.com' WHERE id = 5;
UPDATE employees SET email = 'fiona.gallagher@gmail.com' WHERE id = 6;
UPDATE employees SET email = 'george.washington@gmail.com' WHERE id = 7;
UPDATE employees SET email = 'hannah.montana@gmail.com' WHERE id = 8;
UPDATE employees SET email = 'ian.somerhalder@gmail.com' WHERE id = 9;
UPDATE employees SET email = 'jessica.alba@gmail.com' WHERE id = 10;
UPDATE employees SET email = 'karl.urban@gmail.com' WHERE id = 11;
UPDATE employees SET email = 'lara.croft@gmail.com' WHERE id = 12;
UPDATE employees SET email = 'mike.tyson@gmail.com' WHERE id = 13;
UPDATE employees SET email = 'nina.dobrev@gmail.com' WHERE id = 14;
UPDATE employees SET email = 'oscar.wilde@gmail.com' WHERE id = 15;
UPDATE employees SET email = 'paul.walker@gmail.com' WHERE id = 16;
UPDATE employees SET email = 'quincy.jones@gmail.com' WHERE id = 17;
UPDATE employees SET email = 'rachel.green@gmail.com' WHERE id = 18;
UPDATE employees SET email = 'sam.smith@gmail.com' WHERE id = 19;
UPDATE employees SET email = 'tina.fey@gmail.com' WHERE id = 20;
UPDATE employees SET email = 'uma.thurman@gmail.com' WHERE id = 21;
UPDATE employees SET email = 'victor.hugo@gmail.com' WHERE id = 22;
UPDATE employees SET email = 'wanda.maximoff@gmail.com' WHERE id = 23;
UPDATE employees SET email = 'xander.cage@gmail.com' WHERE id = 24;
UPDATE employees SET email = 'yvonne.strahovski@gmail.com' WHERE id = 25;
UPDATE employees SET email = 'zachary.quinto@gmail.com' WHERE id = 26;
UPDATE employees SET email = 'albert.einstein@gmail.com' WHERE id = 27;
UPDATE employees SET email = 'britney.spears@gmail.com' WHERE id = 28;
UPDATE employees SET email = 'chris.pratt@gmail.com' WHERE id = 29;
UPDATE employees SET email = 'david.beckham@gmail.com' WHERE id = 30;
UPDATE employees SET email = 'ellen.page@gmail.com' WHERE id = 31;
UPDATE employees SET email = 'freddie.mercury@gmail.com' WHERE id = 32;
UPDATE employees SET email = 'gina.rodriguez@gmail.com' WHERE id = 33;
UPDATE employees SET email = 'harry.potter@gmail.com' WHERE id = 34;
UPDATE employees SET email = 'isabella.swan@gmail.com' WHERE id = 35;
UPDATE employees SET email = 'jackie.chan@gmail.com' WHERE id = 36;
UPDATE employees SET email = 'kevin.hart@gmail.com' WHERE id = 37;
UPDATE employees SET email = 'leonardo.dicaprio@gmail.com' WHERE id = 38;
UPDATE employees SET email = 'meryl.streep@gmail.com' WHERE id = 39;
UPDATE employees SET email = 'natalie.portman@gmail.com' WHERE id = 40;
UPDATE employees SET email = 'oprah.winfrey@gmail.com' WHERE id = 41;
UPDATE employees SET email = 'prince.charles@gmail.com' WHERE id = 42;
UPDATE employees SET email = 'queen.elizabeth@gmail.com' WHERE id = 43;
UPDATE employees SET email = 'rihanna@gmail.com' WHERE id = 44;
UPDATE employees SET email = 'scarlett.johansson@gmail.com' WHERE id = 45;
UPDATE employees SET email = 'tom.holland@gmail.com' WHERE id = 46;
UPDATE employees SET email = 'usher.raymond@gmail.com' WHERE id = 47;
UPDATE employees SET email = 'vin.diesel@gmail.com' WHERE id = 48;
UPDATE employees SET email = 'will.smith@gmail.com' WHERE id = 49;
UPDATE employees SET email = 'xena.warrior@gmail.com' WHERE id = 50;
UPDATE employees SET email = 'yoda.master@gmail.com' WHERE id = 54;













				 
