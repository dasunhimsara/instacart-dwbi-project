-- Staging Table for Customer (from Mockaroo)
CREATE TABLE Stg_Customer (
    customer_id INT,
    first_name NVARCHAR(500),
    last_name NVARCHAR(500),
    phone_number NVARCHAR(500),
    email NVARCHAR(500),
    gender NVARCHAR(50),
    age INT,
    street_address NVARCHAR(500),
    city NVARCHAR(500),
    country NVARCHAR(500)
);

-- Staging Table for Department
CREATE TABLE Stg_Department (
    department_id INT,
    department NVARCHAR(50),
    discount INT
);

-- Staging Table for Aisle
CREATE TABLE Stg_Aisle (
    aisle_id INT,
    aisle NVARCHAR(50)
);

-- Staging Table for Product
CREATE TABLE Stg_Product (
    product_id INT,
    product_name NVARCHAR(255),
    unit_price FLOAT,
    aisle_id INT,
    department_id INT,
    date_listed DATETIME
);

-- Staging Table for Rating (from .txt)
CREATE TABLE Stg_Rating (
    product_id INT,
    num_of_raters INT,
    rating FLOAT
);

-- Staging Table for Orders
CREATE TABLE Stg_Orders (
    order_id INT,
    user_id INT,
    order_number INT,
    order_dow INT,
    order_hour_of_day INT,
    days_since_prior_order INT,
    order_date DATETIME
);

-- Staging Table for Order Details
CREATE TABLE Stg_OrderDetails (
    order_id INT,
    product_id INT,
    add_to_cart_order INT,
    reordered INT
);


SELECT * FROM Stg_Product
SELECT * FROM Stg_Rating
SELECT * FROM Stg_Orders
SELECT * FROM Stg_Aisle
SELECT * FROM Stg_Department
SELECT * FROM Stg_Customer
SELECT * FROM Stg_OrderDetails