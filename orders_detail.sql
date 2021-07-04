(
    id_product VARCHAR(10) NOT NULL,
    id_order   INT         NOT NULL,
    price      INT         NOT NULL,
    quantity   INT         NOT NULL,
    PRIMARY KEY (id_product, id_order)
) ENGINE = INNODB;

DESCRIBE orders_detail;

ALTER TABLE `orders_detail`
	ADD CONSTRAINT fk_orders_detail_orders
		FOREIGN KEY (`id_order`) REFERENCES orders (`id`);
ALTER TABLE orders_detail
    ADD CONSTRAINT fk_orders_detail_product
        FOREIGN KEY (`id_product`) REFERENCES products(`id`);
        
SELECT * FROM `orders_detail`;
SHOW CREATE TABLE `orders_detail`;

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P0001', 1, 25000, 1),
       ('P0002', 1, 25000, 1);

INSERT INTO orders_detail(id_product, id_order, price, quantity)
VALUES ('P0003', 2, 25000, 1),
       ('P0001', 2, 25000, 1);

SELECT orders.id, products.id, products.name, orders_detail.quantity, orders_detail.price
FROM orders
         JOIN orders_detail ON (orders_detail.id_order = orders.id)
         JOIN products ON (products.id = orders_detail.id_product);    
