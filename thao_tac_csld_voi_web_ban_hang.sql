create table   persons( 
id int NOT NULL,
last_name varchar(255) NOT NULL,
first_name varchar(255) NOT NULL,
age int
);
insert into  persons values(1,"Hà Tuân Anh","tuananh",10);
-- chinh sua bang
alter table persons
add column email varchar(200) unique;
insert into persons values
(2,"quan","quan",19,"quan@gmail.com"),
(2,"quan","quan",19,"qua@gmail.com");
select*from persons; 

create table producer(
producer_id int primary key ,
`name` varchar(100)
);
create table cars(
	car_id int primary key,
    `name` varchar(100),
    producerId int,
    foreign key (producerId) REFERENCES producer(producer_id)
);
alter table cars
set column car_id auto_increment; 
ALTER TABLE cars ADD CONSTRAINT uc_car UNIQUE (cars);
insert into producer values
(1,"kia",null,1);
insert into cars(car_id,`name`) values
(1,"kia");


