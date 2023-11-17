ALTER TABLE post modify COLUMN contents VARCHAR(3000);

ALTER TABLE author CHANGE add COLUMN address VARCHAR(255);

show create TABLE author;

DROP TABLE post;