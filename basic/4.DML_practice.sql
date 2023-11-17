INSERT into author(id, name, email, password) VALUES(1, 'kim', 'abc@naver.com', 'abc');
INSERT into author(id, name, email, role) VALUES(2, 'kim', 'abc@naver.com', insert);
INSERT into author(id, name, email) VALUES(3, 'kim', 'abc@naver.com');
INSERT into author(id, name, email) VALUES(4, 'kim', 'abc@naver.com');
INSERT into author(id, name, email) VALUES(5, 'kim', 'abc@naver.com');
select *from author


INSERT into post(id, title) VALUES(3, 'kim');
INSERT into post(id, title) VALUES(4, 'kim');
INSERT into post(id, author_id) VALUES(6,1);
INSERT into post(id, author_id) VALUES(7, 2);

select *from post
INSERT into post(id, name, title, author_id) VALUES(5, 'kim', 'abc@naver.com',10);

use board - 데이터 베이스 셀렉하는

--
update author set email = 'abc@naver.com', name = 'kim' where id=4;
DELETE FROM author WHERE id = 4;

방법1 
update post set author_id = 2;
delete from author where id = 2;

방법2
update post set author_id = null where author_id =2;ㄹ
delete from author where id = 2;

-- 중복시 제거되는 값 제거
select disrinct name from author;

-- order by
 select *from author order by name desc; (이름순으로 )

-- 선택한 결과의 정렬
select 문으로 선택한 결과를 order by 절을 사용하여 정렬
기본 설정은 오름차순(ASC), 내림차순(DESC)

--order by 멀티: 먼저 쓴 컬럼 우선 정렬, asc/desc 생략시 asc 적용// unll이 먼저 조회가 됨
 select *from author order by name desc, email desc;

-- limit number: 특정숫자로 결과값 갯수 제한 2
select *from author order by name desc limit 2;

-- 별칭을 이용한 처리 // as 생략가능함
테이블과 필드에 임시로 별칭(alias)을 부여하고, 해당 별칭을 select 문에 사용
select 필드이름 as 별칠 from 테이블 이름;
select 필드이름 from 테일블 이름 as 순서

--테이블에도 별칭을 붙이는데 붙이
select a.name, p.email from author as a;

author_did
updatr post where author_id is not null

ALTER add column