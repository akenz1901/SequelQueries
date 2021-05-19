use org;
select FIRST_NAME as worker_name
from worker;

select concat(first_name, "    ", last_name) as complete_name
from worker;

select *
from worker
order by FIRST_NAME;

select *
from worker
order by DEPARTMENT desc;

select *
from worker
where first_name not in ("vipul","satish");

select *
from worker
where department = 'Admin';

select *
from worker
where first_name like '_____h';

select *
from worker
where first_name like '%a';

select *
from worker
where salary between 100000 and 500000;

select count(distinct department = "admin")
from worker;

select first_name, last_name
from worker
where SALARY >= 50000
and SALARY<=100000;

select *
from worker
where department = 'admin';

select joining_date
from worker;

select *
from human;
limit 5;