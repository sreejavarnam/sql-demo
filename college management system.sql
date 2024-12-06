CREATE DATABASE college;

USE college;

CREATE TABLE course (
    courseId INT PRIMARY KEY,
    cName VARCHAR(100) NOT NULL,
    fees DECIMAL(10, 2) NOT NULL
);

DESC course;

CREATE TABLE student (
    rollno INT PRIMARY KEY,
    fName VARCHAR(50),
    lName VARCHAR(50),
    phone VARCHAR(15) UNIQUE,
    cId INT,
    email VARCHAR(100) UNIQUE,
    FOREIGN KEY (cId) REFERENCES course(courseId)
);

DESC student;

CREATE TABLE faculty (
    fId INT PRIMARY KEY,
    fName VARCHAR(100) NOT NULL,
    Designation VARCHAR(100),
    Qualification VARCHAR(100),
    phoneNo VARCHAR(15) UNIQUE,
    cId INT,
    FOREIGN KEY (cId) REFERENCES course(courseid)
);

DESC faculty;

CREATE TABLE book (
    Bid INT PRIMARY KEY,
    BName VARCHAR(255) UNIQUE,
    Author VARCHAR(255),
    Publisher VARCHAR(255),
    Price DECIMAL(10, 2),
    Qty INT
);

DESC book;

CREATE TABLE library (
    lId INT PRIMARY KEY,
    BookId INT,
    IssueDate DATE,
    ReturnDate DATE,
    rollno INT,
    FOREIGN KEY (BookId) REFERENCES book(Bid),
    FOREIGN KEY (rollno) REFERENCES student(rollno)
);

DESC library;

CREATE TABLE address (
    Adid INT PRIMARY KEY,
    houseno VARCHAR(50),
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    rNo INT,
    FOREIGN KEY (rNo) REFERENCES student(rollno)
);

DESC address;

INSERT INTO course (courseId, cName, fees)
VALUES
(1, 'Computer Science', 5000),
(2, 'Data Science', 6000),
(3, 'Mechanical Engineering', 5500),
(4, 'Civil Engineering', 5200),
(5, 'Electrical Engineering', 5300),
(6, 'Business Management', 4500),
(7, 'Economics', 4000),
(8, 'Physics', 4700),
(9, 'Mathematics', 4600),
(10, 'Biotechnology', 4800);

SELECT * FROM course;

INSERT INTO student (rollno, fName, lName, phone, cId, email)
VALUES
(1, 'John', 'Doe', '9876543210', 1, 'john.doe@gmail.com'),
(2, 'Jane', 'Smith', '9876543211', 2, 'jane.smith@gmail.com'),
(3, 'Alice', 'Johnson', '9876543212', 3, 'alice.johnson@gmail.com'),
(4, 'Bob', 'Williams', '9876543213', 1, 'bob.williams@gmail.com'),
(5, 'Carol', 'Brown', '9876543214', 4, 'carol.brown@gmail.com'),
(6, 'David', 'Miller', '9876543215', 2, 'david.miller@gmail.com'),
(7, 'Eva', 'Moore', '9876543216', 5, 'eva.moore@gmail.com'),
(8, 'Frank', 'Anderson', '9876543217', 6, 'frank.anderson@gmail.com'),
(9, 'Grace', 'Thomas', '9876543218', 1, 'grace.thomas@gmail.com'),
(10, 'Hank', 'Taylor', '9876543219', 3, 'hank.taylor@gmail.com'),
(11, 'Isabella', 'White', '9876543220', 2, 'isabella.white@gmail.com'),
(12, 'Jack', 'Harris', '9876543221', 4, 'jack.harris@gmail.com'),
(13, 'Kara', 'Clark', '9876543222', 1, 'kara.clark@gmail.com'),
(14, 'Leo', 'Lewis', '9876543223', 5, 'leo.lewis@gmail.com'),
(15, 'Mia', 'Robinson', '9876543224', 6, 'mia.robinson@gmail.com'),
(16, 'Nina', 'Walker', '9876543225', 3, 'nina.walker@gmail.com'),
(17, 'Owen', 'Hall', '9876543226', 4, 'owen.hall@gmail.com'),
(18, 'Paul', 'Young', '9876543227', 2, 'paul.young@gmail.com'),
(19, 'Quinn', 'King', '9876543228', 5, 'quinn.king@gmail.com'),
(20, 'Rita', 'Scott', '9876543229', 6, 'rita.scott@gmail.com'),
(21, 'Sam', 'Adams', '9876543230', 1, 'sam.adams@gmail.com'),
(22, 'Tina', 'Green', '9876543231', 3, 'tina.green@gmail.com'),
(23, 'Uma', 'Baker', '9876543232', 2, 'uma.baker@gmail.com'),
(24, 'Victor', 'Mitchell', '9876543233', 4, 'victor.mitchell@gmail.com'),
(25, 'Zara', 'Lee', '9876543234', 5, 'zara.lee@gmail.com');

SELECT * FROM student;

INSERT INTO faculty (fId, fName, Designation, Qualification, phoneNo, cId)
VALUES
(1, 'Dr. John Wilson', 'Professor', 'PhD', '9876543210', 1),
(2, 'Dr. Emily Davis', 'Assistant Professor', 'PhD', '9876543211', 2),
(3, 'Dr. David Brown', 'Lecturer', 'MSc', '9876543212', 3),
(4, 'Dr. Sarah Lee', 'Professor', 'PhD', '9876543213', 4),
(5, 'Dr. Michael Johnson', 'Lecturer', 'MSc', '9876543214', 5),
(6, 'Dr. Olivia Thomas', 'Professor', 'PhD', '9876543215', 6),
(7, 'Dr. Ethan Harris', 'Lecturer', 'MSc', '9876543216', 7),
(8, 'Dr. Noah Green', 'Professor', 'PhD', '9876543217', 8),
(9, 'Dr. Ava Clark', 'Lecturer', 'MSc', '9876543218', 9),
(10, 'Dr. Mia Adams', 'Assistant Professor', 'PhD', '9876543219', 10),
(11, 'Dr. Liam Roberts', 'Professor', 'PhD', '9876543220', 1),
(12, 'Dr. Charlotte Walker', 'Lecturer', 'MSc', '9876543221', 2),
(13, 'Dr. Jacob King', 'Professor', 'PhD', '9876543222', 3),
(14, 'Dr. Amelia Baker', 'Lecturer', 'MSc', '9876543223', 4),
(15, 'Dr. Ella Davis', 'Assistant Professor', 'PhD', '9876543224', 5);

SELECT * FROM faculty;

INSERT INTO book (Bid, BName, Author, Publisher, Price, Qty)
VALUES
(1, 'Data Science Handbook', 'John Smith', 'TechBooks', 49.99, 10),
(2, 'Introduction to SQL', 'Alice Brown', 'DataPress', 29.99, 20),
(3, 'Advanced Python Programming', 'James Doe', 'CodePress', 59.99, 15),
(4, 'Machine Learning Basics', 'Sophia Lee', 'MLBooks', 39.99, 12),
(5, 'AI in Action', 'Daniel White', 'TechBooks', 69.99, 5),
(6, 'Understanding Databases', 'William Green', 'DataPress', 35.99, 8),
(7, 'JavaScript for Beginners', 'Emma Moore', 'CodePress', 24.99, 25),
(8, 'Deep Learning Concepts', 'Olivia King', 'MLBooks', 89.99, 6),
(9, 'Cloud Computing Essentials', 'Liam Young', 'TechBooks', 42.99, 10),
(10, 'Cybersecurity Fundamentals', 'Sophia Lee', 'DataPress', 49.99, 9),
(11, 'Web Development with Flask', 'Isabella Martinez', 'CodePress', 39.99, 15),
(12, 'HTML and CSS: Design and Build Websites', 'Jon Duckett', 'TechBooks', 29.99, 20),
(13, 'The Pragmatic Programmer', 'Andrew Hunt', 'TechBooks', 59.99, 7),
(14, 'Effective Java', 'Joshua Bloch', 'Addison-Wesley', 54.99, 11),
(15, 'You Don’t Know JS', 'Kyle Simpson', 'O\'Reilly Media', 34.99, 18),
(16, 'Automate the Boring Stuff with Python', 'Al Sweigart', 'No Starch Press', 39.99, 15),
(17, 'Learning Java', 'Brett McLaughlin', 'O\'Reilly Media', 44.99, 8),
(18, 'The Clean Coder', 'Robert C. Martin', 'Prentice Hall', 49.99, 9),
(19, 'Design Patterns', 'Erich Gamma', 'Addison-Wesley', 55.99, 12),
(20, 'Introduction to Machine Learning', 'Ethem Alpaydin', 'MIT Press', 62.99, 6),
(21, 'Data Structures and Algorithms Made Easy', 'Narasimha Karumanchi', 'CareerMonk Publications', 29.99, 20),
(22, 'Introduction to Artificial Intelligence', 'Wolfgang Ertel', 'Springer', 79.99, 5),
(23, 'Computer Vision', 'Richard Szeliski', 'Springer', 49.99, 10),
(24, 'Digital Design and Computer Architecture', 'David Harris', 'Morgan Kaufmann', 74.99, 6),
(25, 'Introduction to Quantum Computing', 'Michael Nielsen', 'Quantum Books', 99.99, 3),
(26, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', 'Prentice Hall', 89.99, 5),
(27, 'The Art of Computer Programming', 'Donald Knuth', 'Addison-Wesley', 149.99, 2),
(28, 'Principles of Compiler Design', 'Alfred V. Aho', 'Addison-Wesley', 69.99, 7),
(29, 'Computer Networking: A Top-Down Approach', 'James Kurose', 'Pearson', 69.99, 10),
(30, 'Java Concurrency in Practice', 'Brian Goetz', 'Addison-Wesley', 49.99, 8),
(31, 'Cryptography and Network Security', 'William Stallings', 'Pearson', 69.99, 12),
(32, 'Data Mining: Concepts and Techniques', 'Jiawei Han', 'Morgan Kaufmann', 74.99, 6),
(33, 'Computer Graphics: Principles and Practice', 'John F. Hughes', 'Addison-Wesley', 89.99, 4),
(34, 'Building Microservices', 'Sam Newman', 'O\'Reilly Media', 44.99, 12),
(35, 'C Programming Language', 'Brian W. Kernighan', 'Prentice Hall', 39.99, 20),
(36, 'Head First Java', 'Kathy Sierra', 'O\'Reilly Media', 39.99, 20),
(37, 'Python Crash Course', 'Eric Matthes', 'No Starch Press', 34.99, 18),
(38, 'Learning R', 'Richard Cotton', 'O\'Reilly Media', 39.99, 12),
(39, 'Data Warehousing in the Age of Big Data', 'Nikhil Inamdar', 'TechBooks', 69.99, 6),
(40, 'Big Data: Principles and Best Practices', 'Nathan Marz', 'Manning Publications', 59.99, 7),
(41, 'Statistics for Data Science', 'James D. Miller', 'TechPress', 39.99, 15),
(42, 'The Clean Architecture', 'Robert C. Martin', 'Prentice Hall', 49.99, 8),
(43, 'Programming in Scala', 'Martin Odersky', 'Artima', 54.99, 6),
(44, 'Scala for the Impatient', 'Cay S. Horstmann', 'Addison-Wesley', 44.99, 7),
(45, 'Learning PHP, MySQL & JavaScript', 'Robin Nixon', 'O\'Reilly Media', 39.99, 15),
(46, 'The Complete Reference C', 'Herbert Schildt', 'McGraw-Hill', 49.99, 10),
(47, 'Digital Design', 'M. Morris Mano', 'Prentice Hall', 69.99, 8),
(48, 'Introduction to Game Development', 'Steve Rabin', 'Cengage Learning', 54.99, 6),
(49, 'Refactoring: Improving the Design of Existing Code', 'Martin Fowler', 'Addison-Wesley', 49.99, 10),
(50, 'Learning JavaScript Data Structures and Algorithms', 'Loiane Groner', 'Packt Publishing', 34.99, 15);

SELECT * FROM book;

INSERT INTO library (LId, BookId, IssueDate, ReturnDate, rollNo)
VALUES
(1, 11, '2024-10-01', '2024-10-15', 1),
(2, 12, '2024-10-03', '2024-10-17', 2),
(3, 34, '2024-10-05', '2024-10-19', 3),
(4, 5, '2024-10-07', '2024-10-21', 4),
(5, 10, '2024-10-10', '2024-10-24', 5),
(6, 7, '2024-10-11', '2024-10-25', 6),
(7, 9, '2024-10-12', '2024-10-26', 7),
(8, 16, '2024-10-13', '2024-10-27', 8),
(9, 18, '2024-10-14', '2024-10-28', 9),
(10, 15, '2024-10-15', '2024-10-29', 10),
(11, 31, '2024-10-16', '2024-10-30', 11),
(12, 22, '2024-10-17', '2024-10-31', 12),
(13, 13, '2024-10-18', '2024-11-01', 13),
(14, 44, '2024-10-19', '2024-11-02', 14),
(15, 35, '2024-10-20', '2024-11-03', 15),
(16, 32, '2024-10-21', '2024-11-04', 16),
(17, 17, '2024-10-22', '2024-11-05', 17),
(18, 28, '2024-10-23', '2024-11-06', 18),
(19, 49, '2024-10-24', '2024-11-07', 19),
(20, 28, '2024-10-25', '2024-11-08', 20),
(21, 31, '2024-10-26', '2024-11-09', 21),
(22, 22, '2024-10-27', '2024-11-10', 22),
(23, 26, '2024-10-28', '2024-11-11', 23),
(24, 44, '2024-10-29', '2024-11-12', 24),
(25, 29, '2024-10-30', '2024-11-13', 25);

SELECT * FROM library;

INSERT INTO address (Adid, houseno, street, city, state, pincode, rNo)
VALUES
(1, '101', 'First Avenue', 'Chicago', 'Illinois', '60601', 1),
(2, '102', 'Second Street', 'Peoria', 'Illinois', '61601', 2),
(3, '103', 'Greenwood Drive', 'Naperville', 'Illinois', '60540', 3),
(4, '104', 'River Road', 'Rockford', 'Illinois', '61101', 4),
(5, '105', 'Sunset Boulevard', 'Aurora', 'Illinois', '60505', 5),
(6, '106', 'Maplewood Lane', 'Joliet', 'Illinois', '60431', 6),
(7, '107', 'Cedar Falls', 'Elgin', 'Illinois', '60120', 7),
(8, '108', 'Meadowlark Way', 'Champaign', 'Illinois', '61820', 8),
(9, '109', 'Hillcrest Drive', 'Waukegan', 'Illinois', '60085', 9),
(10, '110', 'Orchard Grove', 'Cicero', 'Illinois', '60804', 10),
(11, '111', 'Parkside Court', 'Bloomington', 'Illinois', '61701', 11),
(12, '112', 'Sunrise Terrace', 'Evanston', 'Illinois', '60201', 12),
(13, '113', 'Seventh Street', 'Schaumburg', 'Illinois', '60173', 13),
(14, '114', 'Northfield Avenue', 'Arlington Heights', 'Illinois', '60004', 14),
(15, '115', 'Westview Lane', 'Berwyn', 'Illinois', '60402', 15),
(16, '116', 'Birchwood Road', 'Calumet City', 'Illinois', '60409', 16),
(17, '117', 'Woodland Drive', 'Champaign', 'Illinois', '61821', 17),
(18, '118', 'Winding Way', 'Tinley Park', 'Illinois', '60477', 18),
(19, '119', 'Stonebridge Lane', 'Normal', 'Illinois', '61761', 19),
(20, '120', 'Lakeside Drive', 'DeKalb', 'Illinois', '60115', 20),
(21, '121', 'Dawn Street', 'Burbank', 'Illinois', '60459', 21),
(22, '122', 'Crescent Road', 'Oak Park', 'Illinois', '60302', 22),
(23, '123', 'Pine Valley', 'Downers Grove', 'Illinois', '60515', 23),
(24, '124', 'Silver Maple Drive', 'Elmhurst', 'Illinois', '60126', 24),
(25, '125', 'Summit Place', 'Lake Forest', 'Illinois', '60045', 25);

SELECT * FROM address;

/*list OF students with their course names*/
SELECT s.fName, s.lName, c.cName
FROM student s
JOIN course c ON s.cId = c.courseId;

/*Count of Students enrolled in each course*/
SELECT c.cName, COUNT(s.rollno) AS StudentCount
FROM course c
LEFT JOIN student s ON c.courseId = s.CId
GROUP BY c.cName;

/*Average Price of Books by Publisher*/
SELECT b.Publisher, AVG(b.Price) AS AveragePrice
FROM book b
GROUP BY b.Publisher;

/*Finding the most expensive book available in the library*/
SELECT b.BName, b.Author, b.Price
FROM book b
ORDER BY b.Price DESC
LIMIT 1;

/*Get all students along with their address details*/
SELECT s.fName, s.lName, a.houseno, a.street, a.city, a.state, a.pincode
FROM student s
JOIN address a ON s.rollno = a.rNo;

/*Find all students whose first name is either 'John' or 'Jane' */
SELECT fName,lName 
FROM student
WHERE fName IN ('John','Jane');

/* Listing all the faculties who are teaching courses with fees above 5000*/
SELECT f.fName, c.cName, c.fees
FROM faculty f
JOIN course c ON f.cId = c.courseId
WHERE c.fees > 5000;

/*Listing books that have not been borrowed*/
SELECT b.BName
FROM book b
LEFT JOIN library l ON b.Bid = l.BookId
WHERE l.BookId IS NULL;

/*Stored procedure to count total students in a course*/

DELIMITER //
 
CREATE PROCEDURE CountStudentsInCourse2(
    IN p_CourseId INT,
    OUT p_StudentCount INT
)
BEGIN
    SELECT COUNT(*)
    INTO p_StudentCount
    FROM student
    WHERE cId = p_CourseId;
END //
 
DELIMITER ;

SET @StudentCount=0;
CALL CountStudentsInCourse2(1,@Studentcount);
SELECT @Studentcount AS TotalStudents;

/*Get the details of all faculty members who have a specific qualification as 'PhD' */
SELECT fName,Designation,Qualification 
FROM faculty 
WHERE Qualification='PhD';

/*Retrieving the count of all courses in the course table*/
SELECT COUNT(*) AS total_courses FROM course;

/*Retrieve all the unique cities where students live*/
select distinct city 
from address;

SELECT s.fName, s.lName, b.Bname, l.IssueDate
FROM student s
JOIN library l ON s.Roll_number = l.rollNo
JOIN book b ON l.BookId = b.Bid
WHERE l.ReturnDate IS NULL;





