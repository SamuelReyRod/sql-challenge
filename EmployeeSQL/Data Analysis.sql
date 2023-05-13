--DATA ANALYSIS

-------------------------------------------------------- 1
select
	emp.emp_no
,	emp.last_name
,	emp.first_name
,	emp.sex
,	sal.salary
from employees as emp

	left join salaries as sal on emp.emp_no=sal.emp_no


--------------------------------------------------------- 2
select
	first_name
,	last_name
,	hire_date
from employees
where hire_date between '19860101' and '19861231'
order by hire_date 

--------------------------------------------------------- 3
select
	mngr.dept_no
,	dep.dept_name
,	mngr.emp_no
,	emp.last_name
,	emp.first_name
from dept_manager as mngr

	left join employees as emp on mngr.emp_no=emp.emp_no
	left join departments as dep on mngr.dept_no=dep.dept_no

---------------------------------------------------------- 4

select
	emp.emp_no
,	emp.last_name
,	emp.first_name
,	J1.dept_no
,	dp.dept_name
from employees as emp

JOIN (
	select dept_no, emp_no from dept_manager
	 Union
	 select dept_no, emp_no from dept_emp 
	) as J1 on emp.emp_no=J1.emp_no
	
	left join departments as dp on J1.dept_no=dp.dept_no

---------------------------------------------------------- 5

select
	first_name
,	last_name
,	sex

from employees
where first_name='Hercules' and last_name like 'B%'

---------------------------------------------------------- 6

select
	emp.emp_no
,	emp.last_name
,	emp.first_name
,	J1.dept_no
,	dp.dept_name
from employees as emp

JOIN (
	select dept_no, emp_no from dept_manager
	 Union
	 select dept_no, emp_no from dept_emp 
	) as J1 on emp.emp_no=J1.emp_no
	
	left join departments as dp on J1.dept_no=dp.dept_no

where dp.dept_name='Sales'

--------------------------------------------------------- 7

select
	emp.emp_no
,	emp.last_name
,	emp.first_name
,	J1.dept_no
,	dp.dept_name
from employees as emp

JOIN (
	select dept_no, emp_no from dept_manager
	 Union
	 select dept_no, emp_no from dept_emp 
	) as J1 on emp.emp_no=J1.emp_no
	
	left join departments as dp on J1.dept_no=dp.dept_no

where dp.dept_name in ('Sales','Development')

--------------------------------------------------------------- 8

select 
	last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc, last_name