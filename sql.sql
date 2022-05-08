Create table books(
BOOK_ID     VARCHAR(10) NOT NULL,
BOOK_TITLE  VARCHAR(300),
BOOK_AUTHOR VARCHAR(50),
SUPPLIER_ID VARCHAR(10),
CATEGORY    VARCHAR(50),
price integer not null,
PRIMARY KEY (BOOK_ID),
FOREIGN KEY (SUPPLIER_ID) REFERENCES suppliers(SUPPLIER_ID),
constraint price_check check (price >= 0),
constraint category_check check (category = 'Finance' or category = 'Marketing' or category = 'Operations')
);

Create table suppliers(
SUPPLIER_ID    VARCHAR(10) NOT NULL,
NAME           VARCHAR(50),
PRIMARY KEY (SUPPLIER_ID)
);
drop table suppliers;

Create table users(
USER_ID      VARCHAR(10) NOT NULL,
NAME         VARCHAR(50),
DESIGNATION  VARCHAR(10),
PRIMARY KEY (USER_ID),
constraint user_check check (DESIGNATION = 'STUDENT' or DESIGNATION = 'STAFF' or DESIGNATION = 'OTHERS')
);
select * from users;
drop table users;
CREATE TABLE library_staff(
STAFF_ID    VARCHAR(10) NOT NULL,
NAME        VARCHAR(50),
PRIMARY KEY (STAFF_ID)
);
drop table library_staff;
select * from library_staff;

insert into books values ('b101', 'Introduction to Capital Budgeting', 'Huma Qureshi', 'Sup555', 'Finance', 2000);
insert into books values ('b120', 'Marketing Mix', 'Preeti Zinta', 'Sup888', 'Marketing', 950);
insert into books values ('b845', 'Supplqay Chain', 'Amitabh Desai', 'Sup333', 'Operations', 700);
insert into books values ('b210', 'Capital Markets', 'Kartik Jhunjhunwala', 'Sup555', 'Finance',550);
insert into books values ('b895', 'Product Mix', 'Mehul Desai', 'Sup888', 'Marketing',3667);
insert into books values ('b127', 'Advanced Marketing', 'Girish Somaiyya', 'Sup888', 'Marketing',1000);
insert into books values ('b401', 'Distriution Network', 'Unnati Ninave', 'Sup333', 'Operations',320);
insert into books values ('b510', 'Network Modelling', 'Abhishek Gundawar', 'Sup333', 'Operations', 447);
insert into books values ('b021', 'Basics of Accounting', 'Rocky Balboa', 'Sup555', 'Finance',890);
insert into books values ('b194', 'Financial Accounting', 'Rakesh Upashi', 'Sup555', 'Finance',1010);
insert into books values ('b770', 'Process Accounting', 'Hitik Hoshan', 'Sup555', 'Finance',1400);
insert into books values ('b520', 'Branch Accounting', 'A R Bachhan', 'Sup555', 'Finance', 1300);
insert into books values ('b531', 'Principles of Investing', 'H N Mohanty', 'Sup555', 'Finance', 1509);
insert into books values ('b134', 'GMBA', 'Dr G', 'Sup333', 'Operations', 1299);
insert into books values ('b545', 'Brand Marketing', 'Satrupa Singh','Sup888', 'Marketing', 1199);
insert into books values ('b565', 'Online Marketing','Dr. Naik', 'Sup888', 'Marketing', 699);

select *from books;

Insert into Users (USER_ID, NAME, DESIGNATION) values ('STUD_009','Aditya','STUDENT');
Insert into Users (USER_ID, NAME, DESIGNATION) values ('STUD_001','Nishant','STUDENT');
Insert into Users (USER_ID, NAME, DESIGNATION) values ('STAF_001','Shubham','STAFF');
Insert into Users (USER_ID, NAME, DESIGNATION) values ('STUD_002','Logan','STUDENT');
Insert into Users (USER_ID, NAME, DESIGNATION) values ('STUD_003','Aryan','STUDENT');
Insert into Users (USER_ID, NAME, DESIGNATION) values ('STUD_004','Paul','STUDENT');
Insert into Users (USER_ID, NAME, DESIGNATION) values ('STUD_005','Adam','STUDENT');
Insert into Users (USER_ID, NAME, DESIGNATION) values ('STAF_002','Lin','STAFF');
Insert into Users (USER_ID, NAME, DESIGNATION) values ('STAF_003','Xu','STAFF');
Insert into Users (USER_ID, NAME, DESIGNATION) values  ('STUD_006', 'Ben', 'STUDENT');
Insert into Users (USER_ID, NAME, DESIGNATION) values  ('STAF_004', 'James', 'STAFF');
Insert into Users (USER_ID, NAME, DESIGNATION) values  ('STUD_007', 'Bond', 'STUDENT');
select * from Users;

Insert into Suppliers values ('Sup555', 'Rina Daud');
Insert into Suppliers values  ('Sup888', 'John Dwayne');
Insert into Suppliers values  ('Sup333', 'Cena Johnson');
select * from Suppliers;

Insert into library_staff values ('LIB_420','Kumar Sanu');
Insert into library_staff values ('LIB_786','Udit Udaas');
Insert into library_staff values ('LIB_069','Johnny Grace');
Insert into library_staff values ('LIB_143','Kumari Shankar');
select* from library_staff;
drop table library_staff;

create table Transactions(
trans_id varchar(50) UNIQUE,
USER_ID varchar(50) NOT NULL,
BOOK_ID varchar (50) NOT NULL,
STAFF_ID varchar(50),
Trans_DATE date,
PRIMARY KEY(trans_id, BOOK_ID),
FOREIGN KEY (BOOK_ID) REFERENCES books(BOOK_ID) ,
FOREIGN KEY (USER_ID) REFERENCES Users (USER_ID),
FOREIGN KEY (STAFF_ID) REFERENCES library_staff (STAFF_ID)
); 

select * from books order by book_id;

DROP table transactions;
select * from Transactions;

insert into transactions values ('trans30004','STUD_001','b021','LIB_420','2022-04-26');
insert into transactions values ('trans30006','STUD_001','b101','LIB_420','2022-04-22');
insert into transactions values ('trans30008','STUD_003','b845','LIB_786','2022-05-22');
insert into transactions values ('trans30001','STUD_003','b401','LIB_786','2022-05-27');
insert into transactions values ('trans30002','STAF_003','b510','LIB_143','2022-01-27');
insert into transactions values ('trans30003','STAF_004','b194','LIB_143','2022-06-12');
insert into transactions values ('trans30007','STUD_006','b401','LIB_786','2022-02-17');

insert into books values ('b720', 'Investment concept every Indian should know', ' Aditya Abhimanyu', 'Sup555', 'Finance', 859);
insert into books values ('b074', 'Marketing Basics', 'John Mayers', 'Sup888', 'Marketing', 499);
insert into books values ('b744', 'Operation 101', 'Kartik Pawar', 'Sup333', 'Operations', 5400);
insert into books values ('b212', 'Finlatics','Darshan Jignesh', 'Sup555', 'Finance', 2399);
insert into books values ('b943', 'Financial Analytics', 'Hitesh Ajgaokar', 'Sup555' ,'Finance', 899);


insert into users values ('STUD_008', 'Aditya G', 'STUDENT');
insert into users values ('STUD_009', 'Aniket Jagdale', 'STUDENT');
insert into users values ('STAFF_005', 'Ganesh Avhad', 'STAFF');
insert into users values ('STUD_011', 'Vinod Shah', 'STUDENT');
insert into users values ('STUD_012', 'Jitendra Gundawar', 'STUDENT');
insert into users values ('STAFF_006', 'Avinash Adhikari', 'STAFF');


insert into transactions values ('trans3008', 'STUD_009', 'b720', 'LIB_420', '2021-02-15');
insert into transactions values ('trans3009', 'STAFF_005', 'b744', 'LIB_786', '2021-02-16');
insert into transactions values ('trans3010', 'STUD_009', 'b720', 'LIB_069', '2021-02-16'); 
insert into transactions values ('trans3011', 'STUD_001', 'b021', 'LIB_420', '2022-04-30');
insert into transactions values ('trans3012', 'STUD_011', 'b210', 'LIB_420', '2022-05-02');
insert into transactions values ('trans3013', 'STAFF_006', 'b943', 'LIB_069', '2022-05-03');
insert into transactions values ('trans3014', 'STUD_011', 'b210', 'LIB_420', '2022-05-06');




#Select books which are isseued more than 2 times
select b.book_title from transactions t inner join users u on t.user_id = u.user_id
inner join books b on t.book_id = b.book_id group by t.user_id, u.name 
having count(t.user_id) >= 2 order by u.name;

# Select books supplied by specific supplier
select b.BOOK_ID, b.BOOK_TITLE, s.NAME 
from books b inner join Suppliers s on b.supplier_id = s.supplier_id 
where s.SUPPLIER_ID='Sup888' order by b.book_id;
#select books borrowed from finance category by people 
select b.BOOK_TITLE, u.name from transactions t 
inner join books b on t.book_id = b.book_id
inner join users u on u.user_id = t.user_id 
where b.CATEGORY = 'Finance' order by b.BOOK_TITLE ASC;


# user with id-### borrowed how many books
select count(b.book_id), u.name from transactions t 
inner join books b on t.book_id = b.book_id
inner join users u on u.user_id = t.user_id 
where t.USER_ID = 'STUD_001';

#which user borrowed  more than 2 books
select count(b.book_id) as book_count, u.name from transactions t 
inner join books b on t.book_id = b.book_id
inner join users u on u.user_id = t.user_id 
group by t.user_id having count(t.USER_ID) >= 2 ;

#staff which issued maximum number of books
select count(t.STAFF_ID),l.name 
from transactions t inner join library_staff l on t.STAFF_ID = l.STAFF_ID 
group by l.STAFF_ID;


#no of transactions between two dates
select * from transactions as t where t.trans_date in ('2021-02-16','2022-02-10');

#which student/staff borrowed  'Distriution Network'
select u.name from transactions as t inner join users as u on t.USER_ID=u.USER_ID
inner join books as b on t.BOOK_ID=b.BOOK_ID 
where b.BOOK_TITLE= 'Distriution Network';

#number of books borrowed by student and staff
select count(u.USER_ID), u.designation 
from users as u inner join transactions as t on u.user_id=t.user_id 
group by u.designation order by u.designation desc; 

describe books;

show create table transactions;