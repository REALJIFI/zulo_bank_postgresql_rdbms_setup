-- drop table if they exists to start afresh

DROP TABLE IF EXISTS Products CASCADE;
DROP TABLE IF EXISTS Customers CASCADE;
DROP TABLE IF EXISTS Orders CASCADE;
DROP TABLE IF EXISTS Order_items CASCADE;

-- CREATE TABLE
CREATE TABLE Products(
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(150)NOT NULL,
    price DECIMAL(10, 2)NOT NULL,
    category VARCHAR(150) NOT NULL
	);

-- CREATE TABLE CUSTOMERS
CREATE TABLE Customers(
    Customer_id SERIAL PRIMARY KEY,
    name VARCHAR (150) NOT NULL,
    email VARCHAR(150) NOT NULL
	);

-- CREATE TABLE ORDERS
CREATE TABLE Orders(
    order_id SERIAL PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
	);

-- CREATE TABLE ORDER_ITEMS
CREATE TABLE order_items(
    order_items_id SERIAL PRIMARY KEY,
    order_id INTEGER NOT NULL,
    product_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY(order_id) REFERENCES Orders(order_id),
    FOREIGN KEY(product_id) REFERENCES Products(Product_id)
	);

