-- Matt Spencer  
-- CS7380  
-- Project 2  
-- 2/13/2016  
-- Comments can be written by including the "--" characters at
-- the beginning of a line, followed by a space.
-- Note that the line will not be interpreted as a comment unless
-- there is a space after the two dash characters.

-- Find the id of the instructor that teaches Computer Science 4380.
-- Assume you do not know the DID of the Computer Science department.
select c.instructor 
from department d join course c using (did)  
where d.name="Computer Science"
and c.num=4380;

-- Find the student IDs and names of students with last name "Johnson"
select * from student
where lname="Johnson";
