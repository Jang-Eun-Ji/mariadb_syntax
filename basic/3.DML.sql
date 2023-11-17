-- insert, select, update, delete
INSTERT INTO 테이블명 (필드이름(칼럼명)1, 필드이름2,...) VALUES(데이터값1, 데이터값2....)
INSERT into author(id, name, email) VALUES(1, 'kim', 'abc@naver.com');
select *from author

DELETE FROM author WHERE id = 4;

update author set name = 'kim' where id=4;

mariadb -u root -p
use board

-- 다 조회
select *from author;

-- 이름만 조회
select name *from author;

--
select *from author where id = 1

select *from author where id >10 and name = 'abc'

select name, email from author;

where id !=1