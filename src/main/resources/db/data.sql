insert into user_tb(username, password, email, created_at) values('ssar', '1234', 'ssar@nate.com', now());
insert into user_tb(username, password, email, created_at) values('cos', '1234', 'cos@nate.com', now());
insert into user_tb(username, password, email, created_at) values('love', '1234', 'love@nate.com', now());

insert into product_tb(name, price, qty, created_at) values('바나나', 1000, 97, now());
insert into product_tb(name, price, qty, created_at) values('사과', 2000, 97, now());
insert into product_tb(name, price, qty, created_at) values('딸기', 3000, 100, now());

insert into purchase_tb(user_id, product_id, count, created_at) values(1, 1, 1, now());
insert into purchase_tb(user_id, product_id, count, created_at) values(1, 2, 1, now());
insert into purchase_tb(user_id, product_id, count, created_at) values(2, 1, 1, now());
insert into purchase_tb(user_id, product_id, count, created_at) values(2, 2, 1, now());
insert into purchase_tb(user_id, product_id, count, created_at) values(3, 1, 1, now());
insert into purchase_tb(user_id, product_id, count, created_at) values(3, 2, 1, now());

commit;