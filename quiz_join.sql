create table student(
StudentID int primary key,
Student_Name varchar(20)
);
insert into student(StudentID,Student_Name)values(1001,"Mary"),(1002,"Jane"),(1003,"Daniel"),(1004,"Jack"),(1005,"Harold");
create table coursename(
CourseID int primary key,
Course_Name varchar(20),
StudentID int,
foreign key coursename(StudentID) references student(StudentID)
);
insert into coursename(CourseID,Course_Name,StudentID)values(5001,"PHP",1004),(5002,"JAVA",1001),(5003,"ASP.NET",1001),(5004,"RUBY",1002);
create table teachername(
TeacherID int primary key,
Teacher_Name varchar(20),
CourseID int,
foreign key teachername(CourseID) references coursename(CourseID)
);
insert into teachername(TeacherID,Teacher_Name,CourseID)values(3001,"Jill",5003),(3002,"Greul",5002),(3003,"Jemkins",5001),(3004,"Polo",5004);
select * from student inner join coursename on student.studentID=coursename.studentID inner join teachername on coursename.courseid=teachername.courseid;
select * from student where studentid = (select studentid from coursename where Course_Name = "ASP.NET");
SELECT * from student right join coursename on student.studentid=coursename.courseid;
SELECT * from student left join coursename on student.studentid=coursename.courseid;
SELECT * from student cross join coursename;



