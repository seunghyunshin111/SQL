-- 집합
-- 테이블에서 데이터를 조회하는 방법(조인 기법 외: 집합)
-- select문을 여러 개 연결하여 작성
-- 합집합, 교집합, 차집합의 논리와 같음

-- union
-- 합집합 / 중복 행은 **한 번**만 출력
select department_id
from employees
union
select department_id
from departements;


-- union all
-- 합집합 / 중복과 상관없이 양쪽에서 조회된 결과를 **모두** 출력
select department_id
from employees
union all
select department_id
from departements;


-- intersect
-- 교집합 / **양쪽 select문 결과에 존재하는** 데이터만 출력
select department_id
from employees
intersect
select department_id
from departements
order by department_id;


-- minus
-- 차집합
select department_id
from employees
minus
select department_id
from departements;
