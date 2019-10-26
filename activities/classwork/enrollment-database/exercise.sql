/*
 SECTION: Group exercises
 DESCRIPTION: Write a valid SQL query to solve each problem.
 */


-- A) Get all the unique department names.
select distinct department from course;
-- B) Get the top 10 female students (first_name, last_name, age, gpa) with the best GPA scores and order by age (asc).
select first_name, last_name, age, gpa from student where gender='female' order by gpa desc, age asc, first_name asc, last_name asc limit 10;
-- C) Count the number of male/female students that are at least 25 years old.
select gender as "Gender", count(gender) as "Count" from student where age>=25 group by gender;
-- D) Get the number of male/female students that were accepted
select *gender , count(gender) from student inner join enrollment on student.id = enrollment.student_id where enrollment.approved=1 group by gender;
-- E) Get the min, average, and max
-- GPA of the accepted male students that are less than 20 years old.
select min(gpa), avg(gpa), max(gpa) from student inner join enrollment on tudent.id = enrollment.student_id where enrollment.approved=1 and student.gender='male';
-- F) Get the number of enrollments to courses that take longer than 2 years to finalize.

-- G) Get the number of male/female student that will take a course from the 'Statistics' department.


/*
 SECTION: Individual exercises
 DESCRIPTION: Write a valid SQL query to solve each problem.
 */

-- A) Count the number of courses per department

-- B) How many male/female students were accepted?

-- C) How many students were accepted per course?

-- D) What's the average age and gpa per course?

-- E) Get the average number of years the enrolled (approved) female student will study.

