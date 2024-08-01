create database Library;

create table Branch(Branch_no int primary key,
Manager_id int,
Branch_address varchar(20),
Contact_no bigint);

create table Employee(Emp_id int primary key,
Emp_name varchar(15),
position varchar(30),
salary int,Branch_no int,
 foreign key(Branch_no) references Branch(Branch_no));



create table Books(ISBN varchar(20) primary key,
Book_title varchar(35),
Category varchar(15),
Rental_price int,
Status varchar(3),
Author varchar(35),
Publisher varchar(35));


create table Customer(Customer_id int primary key,
Customer_name varchar(25),
Customer_address varchar(35),
Reg_date date);

create table issue_status(Issue_id int primary key,
Issued_cust int,
foreign key(Issued_cust) references Customer(Customer_id),
Issue_date date,
ISBN_book varchar(20),
foreign key(ISBN_book) references Books(ISBN));

create table Return_status(Return_id int primary key,
Return_cust int,
Return_book_name varchar(40),
Return_date date,
 foreign key(ISBN_books) references Books(ISBN));


insert into Branch (Branch_no, Manager_id, Branch_address, Contact_no)
 values
	(1, 201, 'Bengaluru, Karnataka', '08015678'),
    (2, 202, 'New Delhi, Delhi', '01176789'),
    (3, 203, 'Kolkata, West Bengal', '94567890'),
    (4, 204, 'Mumbai, Maharashtra', '026758901'),
    (5, 205, 'Hyderabad, Telangana', '0405679012'),
    (6, 206, 'Chennai, Tamil Nadu', '047890123'),
    (7, 207, 'Chandigarh', '0177890234'),
    (8, 208, 'Jaipur, Rajasthan', '0141892345'),
    (9, 209, 'Ahmedabad, Gujarat', '0799012456'),
    (10, 210, 'Pune, Maharashtra', '020123876');
    

insert into employee (emp_id,Emp_name,Position,salary,Branch_no)
 values
	(1, 'Amit Sharma', 'Manager', 60000, 1),
    (2, 'Rohit Kumar', 'Assistant Manager', 50000, 1),
    (3, 'Sita Patel', 'Clerk', 45000, 1),
    (4, 'Ravi Verma', 'Sales Executive', 48000, 1),
    (5, 'Priya Iyer', 'Customer Service', 47000, 1),
    (6, 'Anil Mehta', 'Security', 40000, 1),
    (7, 'Sunita Reddy', 'Manager', 61000, 2),
    (8, 'Vikram Singh', 'Assistant Manager', 51000, 2),
    (9, 'Neha Gupta', 'Clerk', 44000, 2),
    (10, 'Rajesh Das', 'Sales Executive', 47000, 2),
    (11, 'Lakshmi Nair', 'Customer Service', 46000, 2),
    (12, 'Nitin Kumar', 'Security', 42000, 2),
    (13, 'Mohit Jain', 'Manager', 62000, 3),
    (14, 'Kiran Joshi', 'Assistant Manager', 52000, 3),
    (15, 'Geeta Roy', 'Clerk', 43000, 3),
    (16, 'Abhishek Sinha', 'Sales Executive', 49000, 3),
    (17, 'Deepa Rathi', 'Customer Service', 45000, 3),
    (18, 'Vijay Rao', 'Security', 41000, 3),
    (19, 'Preeti Desai', 'Manager', 63000, 4),
    (20, 'Ajay Thakur', 'Assistant Manager', 53000, 4),
    (21, 'Rekha Yadav', 'Clerk', 42000, 4),
    (22, 'Shyam Pillai', 'Sales Executive', 50000, 4),
    (23, 'Sanjay Chawla', 'Customer Service', 44000, 4),
    (24, 'Ruchi Saxena', 'Security', 43000, 4),
    (25, 'Anjali Kulkarni', 'Manager', 64000, 5),
    (26, 'Manish Aggarwal', 'Assistant Manager', 54000, 5),
    (27, 'Sneha Bose', 'Clerk', 41000, 5),
    (28, 'Gaurav Bhatia', 'Sales Executive', 51000, 5),
    (29, 'Kavita Menon', 'Customer Service', 43000, 5),
    (30, 'Tarun Malhotra', 'Security', 42000, 5);
    
insert into books (ISBN, Book_title, Category, Rental_price, Status, Author, Publisher)
values
    ('978-93-5196-796-2', 'History of India', 'History', 27, 'Yes', 'Romila Thapar', 'Penguin India'),
    ('978-93-5287-624-4', 'Modern Indian History', 'History', 26, 'Yes', 'Bipan Chandra', 'Orient Blackswan'),
    ('978-81-291-3867-0', 'Ancient India', 'History', 23, 'Yes', 'R.S. Sharma', 'Oxford University Press'),
    ('978-81-250-3744-3', 'The Story of Civilization', 'History', 24, 'Yes', 'Arjun Dev', 'NCERT'),
    ('978-93-5177-549-3', 'India After Gandhi', 'History', 28, 'Yes', 'Ramachandra Guha', 'HarperCollins India'),
    ('978-93-5264-289-7', 'The Discovery of India', 'History', 25, 'Yes', 'Jawaharlal Nehru', 'Penguin India'),
    ('978-81-291-0954-9', 'The Immortals of Meluha', 'Fiction', 26, 'Yes', 'Amish Tripathi', 'Westland'),
    ('978-81-7522-577-4', '2 States', 'Fiction', 24, 'Yes', 'Chetan Bhagat', 'Rupa Publications'),
    ('978-93-8186-329-5', 'The Alchemist', 'Fiction', 25, 'Yes', 'Paulo Coelho', 'HarperCollins'),
    ('978-93-5363-426-1', 'The White Tiger', 'Fiction', 23, 'Yes', 'Aravind Adiga', 'HarperCollins India'),
    ('978-81-291-4013-8', 'Half Girlfriend', 'Fiction', 24, 'Yes', 'Chetan Bhagat', 'Rupa Publications'),
    ('978-93-5262-597-2', 'Wings of Fire', 'Biography', 26, 'Yes', 'A.P.J. Abdul Kalam', 'Universities Press'),
    ('978-81-291-7954-9', 'Steve Jobs', 'Biography', 28, 'Yes', 'Walter Isaacson', 'Simon & Schuster'),
    ('978-93-5196-424-4', 'I Am Malala', 'Biography', 25, 'Yes', 'Malala Yousafzai', 'Little, Brown and Company'),
    ('978-93-5277-697-6', 'Long Walk to Freedom', 'Biography', 27, 'Yes', 'Nelson Mandela', 'Abacus'),
    ('978-81-291-901-3', 'Sachin Tendulkar: Playing It My Way', 'Biography', 24, 'Yes', 'Sachin Tendulkar', 'Hachette India'),
    ('978-93-5196-196-0', 'The Diary of a Young Girl', 'Biography', 25, 'Yes', 'Anne Frank', 'Penguin India'),
    ('978-81-291-0901-3', 'Sapiens: A Brief History ', 'Non-Fiction', 27, 'Yes', 'Yuval Noah Harari', 'Harvill Secker'),
    ('978-93-5277-302-0', 'Thinking, Fast and Slow', 'Non-Fiction', 26, 'Yes', 'Daniel Kahneman', 'Penguin Books'),
    ('978-93-5287-631-1', 'The Power of Habit', 'Non-Fiction', 24, 'Yes', 'Charles Duhigg', 'Random House'),
    ('978-81-7522-706-8', 'Atomic Habits', 'Non-Fiction', 25, 'Yes', 'James Clear', 'Penguin India'),
    ('978-93-5363-374-5', 'The Subtle Art of Not Giving a F*ck', 'Non-Fiction', 28, 'Yes', 'Mark Manson', 'HarperOne'),
    ('978-81-291-4014-5', 'Rich Dad Poor Dad', 'Non-Fiction', 23, 'Yes', 'Robert T. Kiyosaki', 'Warner Books'),
    ('978-93-5196-425-1', 'The 7 Habits ', 'Non-Fiction', 27, 'Yes', 'Stephen R. Covey', 'Simon & Schuster'),
    ('978-93-5262-592-7', 'Harry Potter and the Philosopher', 'Fantasy', 24, 'Yes', 'J.K. Rowling', 'Bloomsbury'),
    ('978-81-291-0974-9', 'Percy Jackson & The Olympians', 'Fantasy', 26, 'Yes', 'Rick Riordan', 'Disney Hyperion'),
    ('978-93-8186-328-8', 'The Hobbit', 'Fantasy', 25, 'Yes', 'J.R.R. Tolkien', 'HarperCollins'),
    ('978-93-5363-426-2', 'A Game of Thrones', 'Fantasy', 28, 'Yes', 'George R.R. Martin', 'Bantam Books'),
    ('978-81-7522-577-5', 'The Chronicles of Narnia', 'Fantasy', 23, 'Yes', 'C.S. Lewis', 'HarperCollins'),
    ('978-93-8186-329-6', 'Lord of the Rings', 'Fantasy', 24, 'Yes', 'J.R.R. Tolkien', 'HarperCollins');

INSERT INTO customer (Customer_id, customer_name, customer_address, Reg_date) VALUES
(1, 'Alice Johnson', '123 Maple Street, Springfield', '2021-06-15'),
(2, 'Bob Smith', '456 Oak Avenue, Springfield', '2021-08-23'),
(3, 'Charlie Brown', '789 Pine Lane, Springfield', '2022-02-10'),
(4, 'Diana Prince', '101 Elm Street, Springfield', '2022-07-05'),
(5, 'Ethan Hunt', '202 Birch Road, Springfield', '2022-11-18'),
(6, 'Fiona Gallagher', '303 Cedar Street, Springfield', '2023-03-27'),
(7, 'George Lucas', '404 Walnut Avenue, Springfield', '2023-05-14'),
(8, 'Hannah Montana', '505 Chestnut Drive, Springfield', '2023-08-09'),
(9, 'Ian Fleming', '606 Maple Street, Springfield', '2023-10-21'),
(10, 'Jack Sparrow', '707 Oak Avenue, Springfield', '2023-12-15'),
(11, 'Kara Zor-El', '808 Pine Lane, Springfield', '2021-09-12'),
(12, 'Lara Croft', '909 Elm Street, Springfield', '2021-12-05'),
(13, 'Michael Scott', '1010 Cedar Road, Springfield', '2022-03-20'),
(14, 'Nancy Drew', '1111 Birch Lane, Springfield', '2022-05-15'),
(15, 'Oscar Wilde', '1212 Maple Street, Springfield', '2022-09-22'),
(16, 'Pam Beesly', '1313 Oak Avenue, Springfield', '2023-01-30'),
(17, 'Quentin Tarantino', '1414 Walnut Drive, Springfield', '2023-04-18'),
(18, 'Rachel Green', '1515 Chestnut Road, Springfield', '2023-07-04'),
(19, 'Steve Rogers', '1616 Pine Street, Springfield', '2023-09-11'),
(20, 'Tony Stark', '1717 Elm Avenue, Springfield', '2023-11-27');

INSERT INTO customer (Customer_id, customer_name, customer_address, Reg_date) VALUES
(21, 'Oliver Twist', '123 Baker Street, Springfield', '2020-05-14'),
(22, 'Emma Woodhouse', '456 Highbury Road, Springfield', '2019-11-23'),
(23, 'Elizabeth Bennet', '789 Pemberley Lane, Springfield', '2021-04-10'),
(24, 'Jay Gatsby', '101 West Egg, Springfield', '2021-08-05'),
(25, 'Holden Caulfield', '202 Catcher Ave, Springfield', '2021-12-18');


INSERT INTO issue_status (Issue_id, Issued_cust, Issue_date, Isbn_book)
VALUES
    (1, 1, '2022-01-15', '978-93-5196-796-2'),
    (2, 2, '2022-03-10', '978-93-5287-624-4'),
    (3, 3, '2022-05-25', '978-81-291-3867-0'),
    (4, 4, '2022-07-18', '978-81-250-3744-3'),
    (5, 5, '2022-09-10', '978-93-5177-549-3'),
    (6, 6, '2022-11-30', '978-93-5264-289-7'),
    (7, 7, '2023-01-15', '978-81-291-0954-9'),
    (8, 8, '2023-03-05', '978-81-7522-577-4'),
    (9, 9, '2023-04-22', '978-93-8186-329-5'),
    (10, 10, '2023-06-11', '978-93-5363-426-1'),
    (11, 11, '2023-08-14', '978-81-291-4013-8'),
    (12, 12, '2023-10-25', '978-93-5262-597-2'),
    (13, 13, '2023-12-01', '978-81-291-0954-9'),
    (14, 14, '2023-12-15', '978-93-5196-424-4'),
    (15, 15, '2024-01-05', '978-93-5277-697-6'),
    (16, 16, '2022-02-18', '978-81-291-0901-3'),
    (17, 17, '2022-04-10', '978-93-5196-196-0'),
    (18, 18, '2022-06-20', '978-81-291-0901-3'),
    (19, 19, '2022-08-05', '978-93-5277-302-0'),
    (20, 20, '2022-10-15', '978-93-5287-631-1'),
    (21, 1, '2023-01-25', '978-81-7522-706-8'),
    (22, 2, '2023-03-30', '978-93-5363-374-5'),
    (23, 3, '2023-06-05', '978-81-291-4014-5'),
    (24, 4, '2023-08-12', '978-93-5196-425-1'),
    (25, 5, '2023-10-20', '978-93-5262-592-7'),
    (26, 6, '2023-12-30', '978-81-291-0954-9'),
    (27, 7, '2022-01-25', '978-93-8186-328-8'),
    (28, 8, '2022-03-15', '978-93-5363-426-2'),
    (29, 9, '2022-05-22', '978-81-7522-577-5'),
    (30, 10, '2022-07-10', '978-93-8186-329-6');
    
    
insert into return_status (Return_id, Return_cust, Return_book_name, Return_date, Isbn_books)
VALUES
    (1, 1, 'History of India', '2022-02-15', '978-93-5196-796-2'),
    (2, 2, 'Modern Indian History', '2022-04-10', '978-93-5287-624-4'),
    (3, 3, 'Ancient India', '2022-06-05', '978-81-291-3867-0'),
    (4, 4, 'The Immortals of Meluha', '2022-08-20', '978-81-291-0954-9'),
    (5, 5, '2 States', '2022-10-15', '978-81-7522-577-4'),
    (6, 6, 'The Alchemist', '2022-12-01', '978-93-8186-329-5'),
    (7, 7, 'The White Tiger', '2023-01-18', '978-93-5363-426-1'),
    (8, 8, 'Half Girlfriend', '2023-03-10', '978-81-291-4013-8'),
    (9, 9, 'Wings of Fire', '2023-05-15', '978-93-5262-597-2'),
    (10, 10, 'Steve Jobs', '2023-07-05', '978-81-291-0954-9'),
    (11, 11, 'I Am Malala', '2023-09-01', '978-93-5196-424-4'),
    (12, 12, 'Long Walk to Freedom', '2023-10-20', '978-93-5277-697-6'),
    (13, 13, 'Sachin Tendulkar: Playing It My Way', '2023-12-10', '978-81-291-0901-3'),
    (14, 14, 'The Diary of a Young Girl', '2024-01-15', '978-93-5196-196-0'),
    (15, 15, 'Sapiens: A Brief History of Humankind', '2022-03-20', '978-81-291-0901-3'),
    (16, 16, 'Thinking, Fast and Slow', '2022-05-05', '978-93-5277-302-0'),
    (17, 17, 'The Power of Habit', '2022-07-15', '978-93-5287-631-1'),
    (18, 18, 'Atomic Habits', '2022-09-10', '978-81-7522-706-8'),
    (19, 19, 'The Subtle Art of Not Giving a F*ck', '2022-11-20', '978-93-5363-374-5'),
    (20, 20, 'Rich Dad Poor Dad', '2023-01-25', '978-81-291-4014-5'),
    (21, 1, 'The 7 Habits of Highly Effective People', '2023-04-10', '978-93-5196-425-1'),
    (22, 2, 'Harry Potter and the Philosopher\'s Stone', '2023-06-15', '978-93-5262-592-7'),
    (23, 3, 'Percy Jackson & The Olympians', '2023-08-25', '978-81-291-0954-9'),
    (24, 4, 'The Hobbit', '2023-11-05', '978-93-8186-328-8'),
    (25, 5, 'A Game of Thrones', '2024-01-10', '978-93-5363-426-2'),
    (26, 6, 'The Chronicles of Narnia', '2022-04-15', '978-81-7522-577-5'),
    (27, 7, 'Lord of the Rings', '2022-06-30', '978-93-8186-329-6'),
    (28, 8, 'India After Gandhi', '2022-09-05', '978-93-5177-549-3'),
    (29, 9, 'The Discovery of India', '2022-12-15', '978-93-5264-289-7'),
    (30, 10, 'Modern Indian History', '2023-02-20', '978-93-5287-624-4');



-- Retrieve the book title, category, and rental price of all available books. 
    select book_title,category,rental_price from Books;

-- List the employee names and their respective salaries in descending order of salary.
	select emp_name,salary from employee order by salary desc ;
  
-- Retrieve the book titles and the corresponding customers who have issued those books. 
	select book_title,customer_name
    from issue_status
    join books on ISBN_book = ISBN
    join customer on Issued_cust = customer_id ;
    
-- Display the total count of books in each category.
    select category,count(isbn) as 'count_of_books' from books group by Category ;
    
-- Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. --
   select emp_name,position from employee where salary > 50000;
    
-- List the customer names who registered before 2022-01-01 and have not issued any books yet. --
	select customer_name from customer  left join issue_status on customer.customer_id = issue_status.Issued_cust  
    where Reg_date < '2022-01-01' and issue_id is null;
    
-- Display the branch numbers and the total count of employees in each branch. 
	select branch_no,count(*) as employees from employee group by Branch_no;
 
-- Display the names of customers who have issued books in the month of June 2023.
    SELECT c.Customer_name FROM issue_status i JOIN  customer c ON i.Issued_cust = c.Customer_id
	WHERE i.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';
    
-- Retrieve book_title from book table containing history. 
	select book_title from books where category = 'history';
    
-- Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
	select branch_no,count(*) as no_of_employees from employee group by branch_no having count(*) > 5;
    
-- Retrieve the names of employees who manage branches and their respective branch addresses.
	select emp_name, b.branch_address from employee e join branch b on e.branch_no where position = 'Manager';
    
-- Display the names of customers who have issued books with a rental price higher than Rs. 25.
	select c.customer_name from issue_status i 
    join customer c on i.Issued_cust = c.customer_id
    join books b on i.ISBN_book = b.ISBN
    where Rental_price > 25;
