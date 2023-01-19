create table user_tb(
    id int auto_increment primary key,
    username varchar not null unique,
    password varchar not null,
    email varchar not null, 
    created_at timestamp
);

create table product_tb(
    id int auto_increment primary key,
    name varchar not null unique,
    price int not null,
    qty int not null, 
    created_at timestamp
);

create table purchase_tb(
    id int auto_increment primary key,
    user_id int,
    product_id int,
    count int,
    created_at timestamp,
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES user_tb (id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES product_tb (id)
);