SELECT * FROM JOBS;

SELECT * FROM JOBS;

SELECT EMPLOYEE_ID, FIRST_NAME, JOB_ID FROM EMPLOYEES;

SELECT * FROM JOBS;

SELECT EMPLOYEE_ID, FIRST_NAME, JOB_TITLE
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_ID;

SELECT EMPLOYEE_ID AS "CÓDIGO", EMP.FIRST_NAME AS NOME, JOB_TITLE
FROM EMPLOYEES EMP, JOBS JOB
WHERE EMP.JOB_ID = JOB.JOB_ID;

SELECT EMPLOYEE_ID FIRST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES EMP, DEPARTMENTS DEP
WHERE EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID; 

SELECT emp.first_name, emp.employee_id, dep.department_name
from employees emp, departments dep
where emp.department_id = dep.department_id(+);

SELECT EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_NAME, JOB_TITLE
FROM EMPLOYEES EMP, DEPARTMENTS DEP, JOBS JOB
WHERE EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID(+)
AND EMP.JOB_ID = JOB.JOB_ID;

select employee_id, first_name, department_name
from departments dep
right join employees emp
on emp.department_id = dep.department_id(+)

select emp.employee_id,emp.first_name, job.job_title
from employees emp
inner join jobs job
on emp.job_id = job.job_id

select employee_id, first_name, department_name, job_title
from employees emp
left join departments dep
on emp.department_id = dep.department_id
inner join jobs job
on emp.job_id = job.job_id;

SELECT EMPLOYEE_ID, FIRST_NAME, DEPARTMENT_NAME, JOB_TITLE, CITY
FROM EMPLOYEES EMP
LEFT JOIN DEPARTMENTS DEP
ON EMP.DEPARTMENT_ID = DEP.DEPARTMENT_ID
LEFT JOIN JOBS JOB
ON EMP.JOB_ID = JOB.JOB_ID
LEFT JOIN LOCATIONS LOC
ON DEP.LOCATION_ID = LOC.LOCATION_ID;