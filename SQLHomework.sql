-- 1.
select emp.emp_no, emp.last_name, emp.first_name, emp.gender, sal.salary
from employees emp
inner join salaries sal on emp.emp_no = sal.emp_no
order by emp.emp_no asc

-- 2.
select emp_no, last_name, first_name, hire_date
from employees emp
where hire_date between '1986-01-01' and '1986-12-31'
order by emp_no asc

-- 3.
select dept_man.dept, dept.dept_name, dept_man.emp_no, emp.last_name, emp.first_name,
dept_man.from_date, dept_man.to_date
from dept_manager dept_man
inner join departments dept on dept_man.dept = dept.dept_no
inner join employees emp on emp.emp_no = dept_man.emp_no
order by dept_man.emp_no asc

-- 4.
select emp.emp_no, emp.last_name, emp.first_name, depart.dept_name
from employees emp
inner join dept_emp dept on dept.emp_no = emp.emp_no
inner join departments depart on depart.dept_no = dept.dept_no
order by emp.emp_no asc

-- 5.
select emp_no, last_name, first_name
from employees
where first_name = 'Hercules'
and last_name like 'B%'
order by emp_no asc

-- 6.
select emp.emp_no, emp.last_name, emp.first_name, depart.dept_name
from employees emp
inner join dept_emp dept on dept.emp_no = emp.emp_no
inner join departments depart on depart.dept_no = dept.dept_no
where depart.dept_name = 'Sales'
order by emp.emp_no asc

-- 7.
select emp.emp_no, emp.last_name, emp.first_name, depart.dept_name
from employees emp
inner join dept_emp dept on dept.emp_no = emp.emp_no
inner join departments depart on depart.dept_no = dept.dept_no
where depart.dept_name in ('Sales', 'Development')
order by emp.emp_no asc

-- 8.
select last_name, count(*) as occurrence
from employees
group by last_name
order by occurrence desc

-- Epilogue
select emp.emp_no, emp.last_name, emp.first_name, sal.salary
from employees emp
inner join salaries sal on emp.emp_no = sal.emp_no
where emp.emp_no = '499942'