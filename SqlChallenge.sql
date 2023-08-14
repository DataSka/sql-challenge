select first_name, last_name, hire_date
from "Employees";

select first_name, last_name, hire_date
from "Employees"
WHERE DATE_PART('year', hire_date) = 1986;

select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from "Employees" e
join "Dept_Manager" dm on e.emp_no = dm.emp_no
join "Departments" d on dm.dept_no = d.dept_no;


select d.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_no
from "Employees" e
join "Dept_Emp" d on e.emp_no = d.emp_no;


select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from "Employees" e
join "Dept_Emp" de on e.emp_no = de.emp_no
join "Dept_Manager" dm on e.emp_no = dm.emp_no
join "Departments" d on de.dept_no = d.dept_no
;

select first_name, last_name, sex
from "Employees"
where first_name = 'Hercules'
and last_name like 'B%';

--select *
--From public."Departments"

select e.emp_no, e.last_name, e.first_name
from "Employees" e
join "Dept_Emp" d on e.emp_no = d.emp_no
join "Departments" de on de.dept_no = d.dept_no
where de.dept_name = 'Sales';

SELECT last_name, COUNT(*) AS frequency
FROM "Employees"
GROUP BY last_name
ORDER BY frequency DESC;

--select first_name, last_name, sex
--from "Employees"
--where last_name = 'Baba';
