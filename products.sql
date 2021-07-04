CREATE DATABASE NtoN

CREATE TABLE products
(
    id          VARCHAR(10)  NOT NULL,
    NAME        VARCHAR(100) NOT NULL,
    description TEXT,
    price       INT UNSIGNED NOT NULL,
    quantity    INT UNSIGNED NOT NULL DEFAULT 0,
    created_at  TIMESTAMP    NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE = INNODB;

ALTER TABLE `products`
	ADD PRIMARY KEY (`id`);

INSERT INTO products(id, NAME, price, quantity)
VALUES ('P0001', 'Mie Ayam Ceker', 20000, 100),
       ('P0002', 'Mie Ayam Spesial', 25000, 100),
       ('P0003', 'Mie Ayam Yamin', 15000, 100);
       
SELECT * FROM `products`
