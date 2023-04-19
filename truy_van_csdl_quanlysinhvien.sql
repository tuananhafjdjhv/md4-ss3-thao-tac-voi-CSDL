use quanlysinhvien;
drop table class;
create table class(
	class_id int primary key auto_increment,
    class_name varchar(100) not null,
    start_date datetime default  now(),
    status tinyint
);
truncate class;
insert into class(class_name,status) values("JV_10",1),("JV_11",1);


create table student(
	student_id int primary key auto_increment,
    student_name varchar(100),
    address varchar(100),
    status tinyint,
    class_id int not null,
    foreign key (class_id) references class(class_id)
);
insert into student values(null,"nguyen minh quan","nghe an",1,1);



create table `subject`(
	sub_id int primary key auto_increment,
    subject_name varchar(100) not null,
    credit tinyint not null default(1) check(credit >=1),
    status tinyint 
);

insert into subject values(null,"toan",1,1);
create table mark(
	mark_id int primary key auto_increment,
    subject_id int not null,
    student_id int not null,
    mark float default(0) check( mark between 0 and 100),
    foreign key (subject_id) references `subject`(sub_id), 
    foreign key (student_id) references student(student_id)
);


insert into mark values(null,1,1,2.0)