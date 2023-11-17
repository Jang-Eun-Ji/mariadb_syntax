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
update post set author_id = null where author_id =2;
delete from author where id = 2;