-- 연결 연산자 |

select employee_id, first_name||last_name
from employees;

select employee_id,
	first_name || ' ' || last_name,
	email || '@' || 'company.com'
from employees;


-- 산술 연산자

select employee_id, salary, salary+500, salary-100, (salary*1.1)/2
from employees;

select employee_id, salary, salary+500 as 추가급여, salary-100 as 인하급여, (salary*1.1)/2 as 조정급여
from employees;
