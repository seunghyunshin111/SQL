-- Having: 연산된 그룹 함수 결과에 조건 적용하기
- where 절에는 그룹 함수를 사용할 수 없으므로, having 절을 사용해 그룹 함수의 결괏값에 대해 조건식을 적용한다.

select job_id 직무, sum(salary) 직무별_총급여, avg(salary) 직무별_평균급여
from employees
where employee_id >= 10
group by job_id
having sum(salary) > 30000
order by 직무별_총급여 desc, 직무별_평균급여;
