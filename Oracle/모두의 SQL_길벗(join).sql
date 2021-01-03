-- 동등 조인 : 똑같은 데이터끼리 연결하기
-- equi-join or inner join

select *
from employee A, departments B  -- 별칭 지정
where A.department_id = B.department_id;


-- 외부 조인 : 모든 데이터를 연결하기
select COUNT(*) 조인된 건수
from employees A, departments B
where A.department_id = B.department_id;


-- 데이터가 부족한 테이블에 (+) 삽입
-- null 값 생성
select A.employee_id, A.first_name, A.last_name, B.department_id, B.department_name
from employees A, departments B
where A.department_id = B.department_id(+)
order by A.employee_id; 


-- 자체 조인: 자기 자신의 데이터와 연결하기
select A.employee_id, A.first_name, A.last_name, A.manager_id,
      B.first_name||' '||B.last_name manager_name
from employees A, employees B
where A.manager_id = B.employee_id
order by A.employee_id;
