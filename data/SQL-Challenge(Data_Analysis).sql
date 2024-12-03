Select 
emp.emp_no,
emp.last_name,
emp.first_name,
emp.sex,
sal.salary
from employees as emp
join salaries as sal
on emp.emp_no = sal.emp_no

select 
emp.first_name,
emp.last_name,
emp.hire_date
from employees as emp
where emp.hire_date between '1986-01-01' and '1986-12-31'

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

select 
first_name,
last_name,
sex
from employees 
where first_name = 'Hercules'
and last_name like 'B%'

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

select
last_name, count(last_name) as count
from employees
group by last_name
order by count desc