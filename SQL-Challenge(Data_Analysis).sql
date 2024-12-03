-- Listed the employee number, last name, first name, sex, 
-- and salary of each employee 

Select 
emp.emp_no,
emp.last_name,
emp.first_name,
emp.sex,
sal.salary
from employees as emp
join salaries as sal
on emp.emp_no = sal.emp_no

-- Listed the first name, last name, and hire date for the 
-- employees who were hired in 1986.

select 
emp.first_name,
emp.last_name,
emp.hire_date
from employees as emp
where emp.hire_date between '1986-01-01' and '1986-12-31'

-- Listed the manager of each department along with their 
-- department number, department name, employee number, 
-- last name, and first name.

select 
D.dept_name,
D.dept_no,
E.first_name,
E.last_name,
E.emp_no
from departments as D
join dept_manager as M
on D.dept_no = M.dept_no
join employees as E
on E.emp_no = M.emp_no

-- Listed the department number for each employee along with 
-- that employee’s employee number, last name, first name, 
-- and department name.

select
E.first_name,
E.last_name,
E.emp_no,
D.dept_name,
D.dept_no
from departments as D
join dept_emp as DE
on D.dept_no = DE.dept_no
join employees as E
on E.emp_no = DE.emp_no

-- Listed first name, last name, and sex of each employee whose 
-- first name is Hercules and whose last name begins with the 
-- letter B.

select 
first_name,
last_name,
sex
from employees 
where first_name = 'Hercules'
and last_name like 'B%'


-- Listed each employee in the Sales department, 
-- including their employee number, last name, 
-- and first name.

select
E.first_name,
E.last_name,
E.emp_no,
D.dept_name
from departments as D
join dept_emp as DE
on D.dept_no = DE.dept_no
join employees as E
on E.emp_no = DE.emp_no
where D.dept_name = 'Sales'

-- Listed each employee in the Sales and Development 
-- departments, including their employee number, last name, 
-- first name, and department name.

select
E.first_name,
E.last_name,
E.emp_no,
D.dept_name
from departments as D
join dept_emp as DE
on D.dept_no = DE.dept_no
join employees as E
on E.emp_no = DE.emp_no
where D.dept_name in ('Sales','Development')

-- Listed the frequency counts, in descending order, 
-- of all the employee last names (that is, 
-- how many employees share each last name).

select
last_name, count(last_name) as count
from employees
group by last_name
order by count desc