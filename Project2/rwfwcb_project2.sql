1.
select S.fname, S.lname
from student S
	join enroll E on S.sid=E.sid
	join course C on E.num=C.num
	join instructor I on C.instructor=I.id
where I.fname="Philip";

2.
select I.id, I.fname, I.lname 
from instructor I
join course C on C.instructor=I.id group by instructor
having count(id) > 1;

3.
select did, name from department where did not in (select did from major);

4.
select S.sid, S.fname, S.lname from student S 
join enroll E on E.sid=S.sid 
where E.did=200847 
group by S.sid 
having count(E.did) = (select count(num) from course C where C.did=200847)

5.
select I.id, I.fname, I.lname from instructor I
join course C on C.instructor=I.id
where C.num like "4%%%" or C.num like "7%%%"
having count(C.num) > 1

6.
select distinct I.id, I.fname, I.lname from instructor I
join course C on C.instructor=I.id
join enroll E on E.num=C.num
join student S on S.sid=E.sid
join major M on M.sid=S.sid
join department D on D.did=M.did
where D.name="Informatics Institute"

7.
select D.did, D.name from department D
join instructor I on I.home_did=D.did
group by I.home_did
order by count(I.home_did) desc
limit 1;

8.
select S.fname, S.lname from student S
join enroll E on E.sid=S.sid
group by S.fname
having count(S.fname) = 2;

9.
select I.id, I.fname, I.lname from instructor I
join course C on C.instructor=I.id
join enroll E on E.num=C.num
order by count(E.num) desc
limit 1;

10.
select D.name, C.num, avg(S.age), max(S.age), min(S.age) from course C 
join department D on C.did=D.did
join enroll E on E.num=C.num
join student S on S.sid=E.sid
where D.name="Computer Science"
group by C.num
order by C.num asc;
