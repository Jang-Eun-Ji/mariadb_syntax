-- alter table author add column age tinyint unsigned;
-- INSERT into author(id, name, email, password, age) VALUES(6, 'kim', 'abc@naver.com', '33',3);
-- select *from author
-- INSERT into post(id, title) VALUES(3, 'kim');
-- INSERT into post(id, title) VALUES(4, 'kim');
-- select *from post
-- alter table post add column price tinyint unsigned;
-- update post set price 1000.5 where id = 3;

-- create table table_blob(id int, myimg longblob);
-- insert into table_blob(id, myimg) values(2, load_file('C:\\다운로드.jpeg');
-- update author set role = 'user'

-- alter table author modify column role ENUM('admin', 'user') not null default 'user';

-- insert into author (id, name, email, password, role, address, age) 
-- values (7,'kim', 'dfes@dshfsf', 'dsfef','admin','sefsf', 4)

-- select *from author

-- select *from post

-- describe author;

-- insert into author(id, name,role) values (8, 'hong', 'admin')

-- ALTER TABLE post ADD COLUMN created_time DATETIME default current_timestamp(6);

-- insert into post (id) value(5)
-- insert into post (id, title) values (1, 'hong');
-- insert into post (id, title) values (2, 'hong');
-- select *from post
 
-- select *from author 

-- select *from author where id not in (1,2,4);

-- select *from post where id between 2 and 4;

-- select *from post where id >1 and id <5;

-- select *from author

-- select *from author where name LIKE 'hon%'

-- select *from author where name like '%im'

select *from author where name not like '%i%'
