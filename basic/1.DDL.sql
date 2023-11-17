-- 데이터베이스 생성
CREATE DATABASE board;
--데이터 베이스 선택
USE board;
-- author테이블 신규 생성
CREATE TABLE author(id INT, name VARCHAR(255), email VARCHAR(255), 
password VARCHAR(255), test1 VARCHAR(255), PRIMARY KEY(id));

-- 테이블 목록 조회
SHOW TABLES;
--테이블 컬럼 조회
DESCRIBE author;

-- post 테이블 신규 생성
CREATE TABLE posts(id INT PRIMARY KEY, title VARCHAR(255), content VARCHAR(255), author_id INT, FOREIGN KEY (author_id) REFERENCES author(id));

pk 걸고나서 
not null 조건이 있다면, author에 없는 데이터는 post에 생성불가
	author이 post보다 먼저 삭제, 수정이 불가 (옵션 주면 가능함)

-- 테이블 칼럼 상세조회
show full columns from author 

--테이블 생성문 조회
show CREATE TABLE posts;
-- 'CREATE TABLE `posts` (
--   `id` int(11) NOT NULL,
--   `title` varchar(255) DEFAULT NULL,
--   `content` varchar(255) DEFAULT NULL,
--   `author_id` int(11) DEFAULT NULL,
--   PRIMARY KEY (`id`),
--   KEY `author_id` (`author_id`),
--   CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci'


-- 테이블 제약조건 조회
SELECT * FROM INFOMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'posts';

-- 테이블 인덱스 조회 
SHOW INDEX FROM posts; 
// 인덱스는 (제약조건 걸면)프라임키, 포리너 키가 만들어지면 자동으로 만들어짐
 
--DDL 테이블 생성
CREAT TABLE post
(필드이름1 필드타입1 [제약조건],
 필드이름2 필드타입2 [제약조건],
 ...
 [테이블 제약조건]
 )

DDL- ALTER
-- 테이블 이름 변경
ALTER TABLE 테이블명 RENAME 새로운 테이블명;
ALTER TABLE posts RENAME post;

-- 칼럼 추가 
ALTER TABLE author ADD COLUMN role VARCHAR(50);

--필드타입변경// 덮어쓰기(modify) - 원래 있던 제약조건도 무조건 써야함
ALTER TABLE author modify COLUMN name(칼럼이름) VARCHAR(100) NOT NULL;

-- 컬러 이름 변경// 타입이랑 제약조건 있으면 넣어
ALTER TABLE 테이블명 CHANGE COLUMN (기존컬럼명 새로운 컬럼명 타임[제약조건];)
ALTER TABLE post CHANGE COLUMN content contents VARCHAR(255);

-- 컬럼 삭제
ALTER TABLE 테이블명 DROP COLUMN 컬럼명;
ALTER TABLE post DROP COLUMN test1;

-- 데이터베이스 삭제
DROP DATABASE 데이터베이스명;
-- 테이블 삭제
DROP TABLE 테이블명;

-- 테이블의 데이터만을 지우고 싶을 때
DELETE FROM 테이블이름
TRUNCATE TABLE 테이블이름

-- IF EXISTS
특정 객체(예: 데이터베이스나 테이블)가 존재하는 경우에만 명령어를 실행/
스크립트 한번에 할때 에러 안나게 하려고 하는것
DROP DATABASE 또는 TABLE IF EXISTS


ALTER TABLE post CHANGE COLUMN contents contents VARCHAR(3000);

