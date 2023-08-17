-- this is the first question
-- List the employee number, last name, first name, sex, and salary of each employee.

-- this is the first question of the assignment
-- List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no,e.last_name,e.first_name,e.sex,s.salary
from employees AS e
JOIN salaries as s ON e.emp_no = s.emp_no

-- this is the second question of the assignment
-- List the first name, last name, and hire date for the employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where	
	hire_date Like '%1986'
	
-- this is the third question of the assignment
-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
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
-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT de.emp_no,de.dept_no,e.first_name,e.last_name,d.dept_name
From dept_emp as de
join departments as d
on de.dept_no = d.dept_no
join employees as e
on de.emp_no = e.emp_no

-- this is the fifth question of the assingment
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name,last_name,sex
from employees
where(
	first_name = 'Hercules' and last_name Like 'B%'
)

-- this is the sixth question of the assingment
-- List each employee in the Sales department, including their employee number, last name, and first name.
select d.dept_name,de.emp_no,e.first_name,e.last_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
where
	d.dept_name = 'Sales'

-- this is the seventh question of the assignment
-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select de.emp_no,e.last_name,e.first_name,d.dept_name
from employees as e
join dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
where(
	d.dept_name = 'Sales' or d.dept_name='Development'
) 

-- this is the eighth question of the assignment
-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(last_name) as "frequency counts last name"
from employees
group by last_name
order by "frequency counts last name" desc