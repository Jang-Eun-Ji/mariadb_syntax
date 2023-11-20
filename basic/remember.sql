조회하는 명령어

-- 테이블 목록 조회
SHOW TABLES;
--테이블 컬럼 조회// 제약조건도 나옴
DESCRIBE author;

-- 테이블 제약조건 조회
select * from information_schema.KEY_COLUMN_USAGE
where table_name = 'author';

-- 테이블 인덱스 조회 
SHOW INDEX FROM posts; 
--테이블 조회
select *from author
-- 이름만 조회
select name *from author;

CREAT!!!
-- PI테이블 생성법 , author테이블 신규 생성
CREATE TABLE author(id INT, name VARCHAR(255), email VARCHAR(255), 
password VARCHAR(255), test1 VARCHAR(255), PRIMARY KEY(id));

-- FK 테이블 생성법// post 테이블 신규 생성 
CREATE TABLE posts(id INT PRIMARY KEY, title VARCHAR(255), content VARCHAR(255), author_id INT, FOREIGN KEY (author_id) REFERENCES author(id));

-- 테이블 생성
CREAT TABLE post
(필드이름1 필드타입1 [제약조건],
 필드이름2 필드타입2 [제약조건],
 ...
 [테이블 제약조건]
 )

ALTER 수정!!!!!!!!!!!!
DDL- ALTER
-- 테이블 이름 변경
ALTER TABLE 테이블명 RENAME 새로운 테이블명;
ALTER TABLE posts RENAME post;

-- 칼럼 추가 
ALTER TABLE author ADD COLUMN role VARCHAR(50);

--필드타입변경// 덮어쓰기(modify) - 원래 있던 제약조건도 무조건 써야함
ALTER TABLE author modify COLUMN id(칼럼이름) VARCHAR(100) NOT NULL;

-- 컬럼 이름 변경// 타입이랑 제약조건 있으면 넣어
ALTER TABLE 테이블명 CHANGE COLUMN (기존컬럼명 새로운 컬럼명 타임[제약조건];)
ALTER TABLE post CHANGE COLUMN content contents VARCHAR(255);

-- 컬럼 삭제
ALTER TABLE 테이블명 DROP COLUMN 컬럼명;
ALTER TABLE post DROP COLUMN test1;

DROP!!!!!!!!!!!!!!
-- 데이터베이스 삭제
DROP DATABASE 데이터베이스명;
-- 테이블 삭제
DROP TABLE 테이블명;
-- 테이블의 데이터만을 지우고 싶을 때
DELETE FROM 테이블이름
TRUNCATE TABLE 테이블이름
-- IF EXISTS
DROP DATABASE 또는 TABLE IF EXISTS




-- insert, select, update, delete
INSERT INTO 테이블명 (필드이름(칼럼명)1, 필드이름2,...) VALUES(데이터값1, 데이터값2....)
INSERT into author(id, name, email) VALUES(1, 'kim', 'abc@naver.com');

--delete 칼럼하나 지우는거
DELETE FROM author WHERE id = 4;
delete from post where id = 7;

--update 데이터 칼럼에 집어 넣는거
update author set name = 'kim' where id=4;

--select
select *from author where id = 1

select *from author where id >10 and name = 'abc'

select name, email from author;

where id !=1

 - select 찾고싶은 칼럼이름 from 테이블이름[where 조건]
* = 모든 칼럼 의미함
모든필드 선택
 - select *from author;

order by 필드이름 asc(오른차순, 디폴트)

-- 양수음수 다 
select CAST(’123’ as INT) 

select CAST(’123’ as signed)

--M(영어 달 나옴),m(숫자 달), D(th붙어서 나옴), H(24시로 표현) - 대문자 소문자 구분함
SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE from BOOK where 
CATEGORY = '인문' and DATE_FORMAT(	PUBLISHED_DATE, '%Y') = '2021' order by PUBLISHED_DATE

==
--M(영어 달 나옴),m(숫자 달), D(th붙어서 나옴)
SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE from BOOK where 
CATEGORY = '인문' PUBLISHED_DATE like '2021%' order by PUBLISHED_DATE

== 
SELECT BOOK_ID, DATE_FORMAT(PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE from BOOK where 
CATEGORY = '인문' (PUBLISHED_DATE between '2021%-%01-01'and '2021%-%12-31') order by PUBLISHED_DATE

-- 제약조건 제거되는
ALTER table post drop unique 제약조건이름;

alter table author
-- auto_increment
ALTER TABLE post MODIFY COLUMN id INT AUTO_INCREMENT;