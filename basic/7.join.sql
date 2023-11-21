--left join 문법 author id, post author_id이 겹치는것만 
select *from author a inner join post p on a.id = p.author_id;
 여기서 *from은 author랑 post를 모두 포함하는겨

SELECT * FROM tableA INNER JOIN tableB ON tableA.ID = tableB.A_ID
SELECT * FROM tableA AS a INNER JOIN tableB AS b on a.ID = b.a_id; -- as안써도 됨

-- left outter join //author의 결과 다나오고 그 옆에 post붙는데 글안쓴author은 옆에 null로 // 일반적으로 없더라도 0으로 넣어라고 하는거 아니면 무조건 inner join
SELECT * FROM author a LEFT JOIN post p ON a.id = p.author_id

SELECT * FROM author a LEFT JOIN post p ON a.id = p.author_id

select a.name as name , p.title as title from post as p inner join author as a ON a.id= p.author_id

select a.name, p.title from author a left join post p on a.id = p.author_id

select a.name, p.title from author a left join post p on a.id = p.author_id where a.age >= 25;


-- 없어진 기록 찾기
select ANIMAL_ID, NAME from ANIMAL_OUTS 
where ANIMAL_ID not in 
(select o.ANIMAL_ID from ANIMAL_OUTS o inner join ANIMAL_INS i on o.ANIMAL_ID = i.ANIMAL_ID) order by ANIMAL_ID;

select AO.ANIMAL_ID, AO.NAME from ANIMAL_OUTS AO left join ANIMAL_INS AI
ON AO.ANIMAL_ID = AI.ANIMAL_ID
where AI.ANIMAL_ID is null
order by ANIMAL_ID

-- 조건에 맞는 도서와 저자리스트 출력
SELECT b.BOOK_ID, a.AUTHOR_NAME, DATE_FORMAT(b.PUBLISHED_DATE, '%Y-%m-%d') as PUBLISHED_DATE from 
BOOK as b left join AUTHOR as a on b.AUTHOR_ID = a.AUTHOR_ID
where CATEGORY = '경제'
order by PUBLISHED_DATE

-- 포스트의 행 갯수
select count(*) from post;
--평균값
select round (AVG(price),2)from post;

--입양시간 구하기(1)
SELECT cast (date_format(DATETIME, '%H') as unsigned) as HOUR, count(*) as COUNT 
from ANIMAL_OUTS AO 
where date_format(DATETIME, '%H:%i') between '09:00' and '19:59'
group by HOUR 
order by HOUR;

-- 성분으로 구분한 아이스크림 총 주문량
SELECT INGREDIENT_TYPE, SUM(TOTAL_ORDER) AS TOTAL_ORDER
FROM FIRST_HALF FH
LEFT JOIN ICECREAM_INFO II ON FH.FLAVOR = II.FLAVOR
GROUP BY INGREDIENT_TYPE;

--자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
SELECT CAR_TYPE, count(CAR_TYPE) as CARS from CAR_RENTAL_COMPANY_CAR
where OPTIONS like '%통풍시트%' || OPTIONS like'%열선시트%' ||OPTIONS like'%가죽시트%' 
group by CAR_TYPE order by CAR_TYPE

--재구매가 일어난 상품과 회원 리스트

with recursive number_sequence(hour) as(
    select 0 
    union all
    select HOUR + 1 from number_sequence where hour <23
    )
    select HOUR, 0 as count from number_sequence;
where HOUR not in (select cast(DATE_FORMAT(DATETIME, '%H') as signed) as HOUR from ANIMAL_OUTS);

union 
select cast(DATE_FORMAT(DATETIME, '%H') as )