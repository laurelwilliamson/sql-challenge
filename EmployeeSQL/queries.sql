--1
/*Select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees e
	join salaries s
		on (e.emp_no = s.emp_no)
--2
Select e.first_name, e.last_name, e.hire_date
from employees e
WHERE EXTRACT(YEAR FROM e.hire_date) = 1986

--3
Select n.dept_no, n.emp_no, d.dept_name, e.last_name, e.first_name
from dept_manager n
	join departments d
		on (n.dept_no = d.dept_no)
	join employees e 
		on (n.emp_no = e.emp_no)
--4
Select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
	join dept_emp b
		on (e.emp_no = b.emp_no)
			join departments d
				on (b.dept_no = d.dept_no)
--5
Select e.first_name, e.last_name, e.sex
from employees e 
where e.first_name = 'Hercules' and e.last_name LIKE 'B%'

--6
Select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
	join dept_emp b 
		on (e.emp_no = b.emp_no)
			join departments d
				on (b.dept_no = d.dept_no)
				where dept_name = 'Sales'
--7
Select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
	join dept_emp b 
		on (e.emp_no = b.emp_no)
			join departments d
				on (b.dept_no = d.dept_no)
				where dept_name = 'Sales' 
				or dept_name = 'Development'
--8
Select e.last_name, count(e.last_name)
from employees e
group by e.last_name
order by count(e.last_name) desc

--Epilogue:
Select first_name, last_name
from employees
where emp_no = 499942*/

		