/* Highest paid employee in each department */

/* First Approach */
select department_id, MAX(salary) from employee group by department_id;

/* Second Approach */
select department.name, employee.id, employee.name, employee.salary
from employee
inner join department on employee.department_id = department.id
inner join
(
select employee.department_id, max(employee.salary) salary
from employee
group by employee.department_id
) ss on employee.department_id = ss.department_id and employee.salary = ss.salary
order by employee.salary desc

/* Third approach */
select e.*
from employee e
where e.salary = ( select max(salary) from employee s where  s.department_id = e.department_id )

/* Department list with more than 3 employees*/

select department_id from employee
group by department_id having count(*) <= 3

/* Department ID list with max sum ofsalaries*/

with sum_salary as
  ( select department_id, sum(salary) salary from employee
    group by department_id )
select department_id from sum_salary s
where  s.salary = ( select max(salary) from sum_salary )

/* Add new department to the Department table */

insert into department (id, name)
values (7, 'Marketing')

/* Add 3 new employees and cheif */

insert into employee (id, department_id, chief_id, name, salary)
values (4, 7, 3, 'Evan', 5000)

insert into employee (id, department_id, chief_id, name, salary)
values (5, 7, 3, 'Dan', 5000)

insert into employee (id, department_id, chief_id, name, salary)
values (6, 7, 3, 'Mark', 5000)

/* Chief */
insert into employee (id, department_id, chief_id, name, salary)
values (3, 7, 3, 'Sam', 10000)

/* Delete department and all employees */

delete from department where id = 7 /* where name = 'Marketing' */
delete from employee where department_id = 7

/* Update department id in department table and employee table */

update department
set id = 5 where id = 7

update employee
set department_id = 5 where department_id = 7

