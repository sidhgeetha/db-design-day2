create table students (
stu_id int PRIMARY KEY,
name varchar(50),email varchar(50),batch_name varchar(50),mentor_name varchar(50),attendance varchar(25));

insert into students(stu_id,name,email,batch_name,mentor_name,attendance) values(1,'ram','ram@gmail.com','fsd','suresh','70%');

create table batches(
batch_id int PRIMARY KEY,
batch_name varchar(50),
mentor_name varchar(50),
stu_id int,
foreign key (stu_id) references students(stu_id));

describe students;

create table mentors (
mentor_id int primary key, mentor_name varchar(25),batch_id int, 
foreign key (batch_id) references batches(batch_id));

create table tasks (task_id int primary key, task_name varchar(25),batch_id int, foreign key (batch_id) references batches(batch_id),mentor_id int,foreign key (mentor_id) references mentors(mentor_id));

create table marks(task_id int, foreign key (task_id) references tasks (task_id),stu_id int,
foreign key (stu_id) references students(stu_id),marks varchar(20),name varchar(20));