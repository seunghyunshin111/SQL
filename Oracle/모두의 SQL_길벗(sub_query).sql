-- 연결 연산자 |

select employee_id, first_name||last_name
from employees;

select employee_id,
	first_name || ' ' || last_name,
	email || '@' || 'company.com'
from employees;

