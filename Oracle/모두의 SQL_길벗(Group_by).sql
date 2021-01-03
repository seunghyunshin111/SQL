-- Group by
select job_id 직무, Sum(salary) 직무별_총급여, AVG(salary) 직무별_평균급여
from employees
where employee_id >= 10
group by job_id
order by 직무별_총급여 desc, 직무별_평균급여;
