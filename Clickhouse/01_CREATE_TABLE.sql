-- CREATE TABLE
CREATE TABLE ActionLog
(
  'date' Date,
  'id' int,
  'values' Array(String)
  ...
) ENGINE = MergeTree()   -- Table Engine Type
PARTITION BY 'date'      -- 파티션을 나누는 단위
ORDER BY 'id'            -- 파티션 안에서 인덱스를 생성하고 정렬하는 기준


-- 테이블 엔진은 데이터를 조회하고 저장하는 방식을 결정
-- 테이블은 파티션 단위로 나뉘어서 저장
-- 각 파티션은 인덱스 정보, 컬럼에 대한 데이터 포함
-- 하나의 파티션은 여러 개의 파트로 저장  
