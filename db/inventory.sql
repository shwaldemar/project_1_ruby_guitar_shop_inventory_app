DROP TABLE products;
DROP TABLE suppliers;

CREATE TABLE suppliers (
  id SERIAL8 primary key,
  name VARCHAR(255)
);

CREATE TABLE  products (
  id SERIAL8 primary key,
  name VARCHAR(255) ,
  model VARCHAR(255),
  description VARCHAR(255),
  buy_price INT8,
  sell_price INT8,
  quantity INT8,
  supplier_id INT8 references suppliers(id) ON DELETE CASCADE
);
