-- 포린키에서 얼터에서 바뀌면 포스트에서 바꾸게 업데이트 하는것
alter table  post add CONSTRAINT post_author_fk foreign key (author_id) REFERENCES author(id) on update cascade;

-- 제약조건 조회하는법
select * from information_schema.KEY_COLUMN_USAGE
where table_name = 'post';

--제약조건 삭제
ALTER table post drop foreign key post_author_fk;

-- index 삭제
alter table post drop index post_author_fk;

-- 셋 널하기,
alter table  post add CONSTRAINT post_author_fk foreign key (author_id) 
REFERENCES author(id) on update set null on delete set null;

-- 컬럼이름을 바꾸고 거기에 속한것도 1, 2면 바꾸기 나머지 디폴트
select id, title, contents, author_id as author_type from post

select id, title, contents,
case author_id
	when 1 then 'First Author'
    when 2 then 'Second Author'
    when author_id  is null then 'anonymous'
    else 'Others'
    end
as author_type from post;

-- if 조건 참이면 a, 거짓이면 b
select id, title, contents, author_id, if(author_id = 1,'first author', 'others')from post;

select id, title, contents, if(author_id is null,'first author', author_id)from post;

-- where는  order by 전에 오는겨
SELECT BOARD_ID, WRITER_ID, TITLE, PRICE, 
case STATUS
    when 'SALE' then '판매중'
    when 'RESERVED' then '예약중'
    else '거래완료'
    end
as STATUS from USED_GOODS_BOARD 
where CREATED_DATE	='2022-10-05'
order by BOARD_ID desc

