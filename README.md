## Db-design -mysql

1. Created a tables zen class with mysql,
2. create table students (
   stu_id int PRIMARY KEY,
   name varchar(50),email varchar(50),batch_name varchar(50),mentor_name varchar(50),attendance varchar(25));

3. create table batches(
   batch_id int PRIMARY KEY,
   batch_name varchar(50),
   mentor_name varchar(50),
   stu_id int,
   foreign key (stu_id) references students(stu_id));

4. create table mentors (
   mentor_id int primary key, mentor_name varchar(25),batch_id int,
   foreign key (batch_id) references batches(batch_id));....

5. Executed ER diagram using reverse engineer.

## sql query ## 

![Alt text](<Screenshot 2024-02-29 at 13.50.31.png>)

## ER-Diagram

![Alt text](<Screenshot 2024-02-29 at 13.46.51.png>)
