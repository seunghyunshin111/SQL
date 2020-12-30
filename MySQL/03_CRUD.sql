SHOW DATABASES;
USE SAKILA;
SELECT database();
SHOW TABLES;
SELECT * FROM CITY;
INSERT INTO CITY(CITY_ID, CITY, COUNTRY_ID, LAST_UPDATE) VALUES(0, 'SEOUL', 0, '2020-06-12 14:50:50');
SELECT * FROM STAFF;
DESC CITY;
DESC STAFF;

CREATE TABLE CITY_MINY
SELECT COUNTRY_ID, CITY, CITY_ID FROM CITY LIMIT 5;
SHOW TABLES;
SELECT * FROM CITY_MINY;
INSERT INTO CITY_MINY VALUES(110, 'SEOUL', 6);
SELECT * FROM CITY_MINY;
INSERT INTO CITY_MINY(COUNTRY_ID, CITY) VALUES(120, 'BUCHEON');
SELECT * FROM CITY_MINY;
INSERT INTO CITY_MINY(CITY) VALUES('SUWON');
SELECT * FROM CITY_MINY;

INSERT INTO CITY_MINY SELECT COUNTRY_ID, CITY, CITY_ID FROM CITY LIMIT 5 OFFSET 50;
SELECT * FROM CITY_MINY;
DESC CITY_MINY;

INSERT INTO CITY_MINY(CITY_ID, CITY, COUNTRY_ID) VALUES(DEFAULT, 'DAJEON', 150);
SELECT * FROM CITY_MINY;

SHOW TABLES;
SELECT * FROM NLP_B;
INSERT INTO NLP_B VALUES(0, 'ARDINO');
INSERT INTO NLP_B VALUES(1, 'HDH'), (2, 'YSH'), (3, 'SJY'), (4, 'KMG'), (5, 'LYS'), (6, 'LSB');
SELECT * FROM NLP_B;

DELETE FROM NLP_B WHERE ID = 0;
DELETE FROM NLP_B LIMIT 3;
-- DELETE FROM NLP_B ORDER BY ; 사용X
-- DELETE FROM NLP_B LIMIT 1 OFFSET ; 사용X
DELETE FROM NLP_B; 
TRUNCATE NLP_B; # 모두 삭제 파이썬-리스트 CLEAR
SELECT * FROM NLP_B;
SHOW TABLES;

SHOW TABLES;

SELECT * FROM COUNTRY;

# MINICOUNTRY 를 만드는데, 
# COUNTRY 에서 COUNTRY_ID, COUNTRY 만 가져오고, S로 시작하는 나라들만 
# COUNTRY에서 R 또는 N로 시작하는 나라들을 추가해보세요.
# R로 시작하는 나라는 삭제해보세요.
CREATE TABLE MINICOUNTRY SELECT COUNTRY_ID, COUNTRY FROM COUNTRY
WHERE COUNTRY LIKE 'S%';
SHOW TABLES;
SELECT * FROM MINICOUNTRY;

INSERT INTO MINICOUNTRY SELECT COUNTRY_ID, COUNTRY FROM COUNTRY 
WHERE COUNTRY LIKE 'R%' OR COUNTRY LIKE 'N%';
SELECT * FROM MINICOUNTRY;

-- DELETE FROM MINICOUNTRY WHERE COUNTRY_ID = 66;
-- SELECT * FROM MINICOUNTRY;
DESC MINICOUNTRY;
-- UPDATE 테이블명 SET 바꿀 컬럼명 = 값 WHERE 조건식;
UPDATE MINICOUNTRY SET COUNTRY = '0';





