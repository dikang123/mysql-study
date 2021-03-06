-- RANGE

-- orders_range
CREATE TABLE orders_range (
  id               INT AUTO_INCREMENT PRIMARY KEY,
  customer_surname VARCHAR(30),
  store_id         INT,
  salesperson_id   INT,
  order_date       DATE,
  note             VARCHAR(500)
)
  ENGINE = InnoDB
  PARTITION BY RANGE (id) (
  PARTITION p0 VALUES LESS THAN (10000),
  PARTITION p1 VALUES LESS THAN (20000),
  PARTITION p2 VALUES LESS THAN (30000),
  PARTITION p3 VALUES LESS THAN (40000),
  PARTITION p4 VALUES LESS THAN (50000)
  );

