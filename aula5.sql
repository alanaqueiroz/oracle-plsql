select employee_id, first_name, job_id from employees
/
select * from jobs;
/advp
/
select employee_id AS "CODI GO", first_name, job.job_title, job.job_id 
from employees emp, jobs job
where emp.job_id = job.job_id
/
SELECT emp.first_name, emp.employee_id, dep.department_name
from employees emp, departments dep
where emp.department_id = dep.department_id(+);
/
select emp.employee_id,emp.first_name,dep.department_name, job.job_title
from employees emp, departments dep, jobs job
where emp.department_id = dep.department_id(+)
and emp.job_id = job.job_id;
/
select emp.employee_id,emp.first_name, job.job_title
from employees emp
inner join jobs job
on emp.job_id = job.job_id

--sempre que nao permitir nulo (obrigatorio): usar INNER
--sempre que permite nulo: usar 
/

--mesmo resultado. A ordem das tabelas altera o resultado:

select employee_id, first_name, department_name --???
from employees emp
left join departments dep
on emp.department_id = dep.department_id(+)
--where department_name is null
/
select employee_id, first_name, department_name
from departments dep
right join employees emp
on emp.department_id = dep.department_id(+)
------------------------------------------------
/
select employee_id, first_name, department_name, job_title
from employees emp
left join departments dep
on emp.department_id = dep.department_id
inner join jobs job
on emp.job_id = job.job_id;
/
--atvd´: trazer a coluna city da tabela locations
select employee_id, first_name, department_name, job_title, city
from employees emp
left join departments dep
on emp.department_id = dep.department_id
inner join jobs job
on emp.job_id = job.job_id
left join locations loc -- departments possui fk da locations. Departments esta a direita, por isso o left
on dep.location_id = loc.location_id;

