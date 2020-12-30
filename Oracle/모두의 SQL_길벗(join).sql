-- 동등 조인 : 똑같은 데이터끼리 연결하기
-- equi-join or inner join

select *
from employee A, departments B  -- 별칭 지정
where A.department_id = B.department_id;


-- 외부 조인 : 모든 데이터를 연결하기
select COUNT(*) 조인된 건수
from employees A, departments B
where A.department_id = B.department_id;

