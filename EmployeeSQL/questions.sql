-- this is the first question
-- List the employee number, last name, first name, sex, and salary of each employee.
--testing the tables
select *
from employees

-- testing
select *
from dept_emp
where dept_no = 'd005'

-- this is the first question of the assignment
select e.emp_no,e.last_name,e.first_name,e.sex,salary
from employees AS e
JOIN salaries as s ON e.emp_no = s.emp_no

-- this is the second question of the assignment
select first_name, last_name, hire_date
from employees
where	
	hire_date Like '%1986'
	
-- this is the third question of the assignment
SELECT dm.emp_no,de.dept_no,d.dept_name,e.first_name,e.last_name,count(de.emp_no) as "Employees Numbers"
From dept_emp as de
join dept_manager as dm
on dm.dept_no = de.dept_no
join departments as d
on de.dept_no = d.dept_no
join employees as e
on dm.emp_no = e.emp_no
group by (de.dept_no,dm.emp_no,d.dept_no,e.first_name,e.last_name)

-- this is the fourth question of the assignment
SELECT de.emp_no,de.dept_no,e.first_name,e.last_name,d.dept_name
From dept_emp as de
join departments as d
on de.dept_no = d.dept_no
join employees as e
on de.emp_no = e.emp_no

-- this is the fifth question of the assingment
select first_name,last_name,sex
from employees
where(
	first_name = 'Hercules' and last_name Like 'B%'
)

-- this is the sixth question of the assingment
select d.dept_name,de.emp_no,e.first_name,e.last_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
where
	d.dept_name = 'Sales'

-- this is the seventh question of the assignment
select de.emp_no,e.last_name,e.first_name,d.dept_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
where(
	d.dept_name = 'Sales' or d.dept_name='Development'
) 

-- this is the eighth
select last_name, count(last_name) as "frequency counts last name"
from employees
group by last_name
order by "frequency counts last name" desc