CREATE TABLE DimDepartment (
    department_SK INT IDENTITY(1,1) PRIMARY KEY,
    department_id INT NOT NULL,
    department_name NVARCHAR(50)
);

CREATE TABLE DimAisle (
    aisle_SK INT IDENTITY(1,1) PRIMARY KEY,
    aisle_id INT NOT NULL,
    aisle_name NVARCHAR(100)
);

CREATE TABLE DimRating (
    rating_SK INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT,
    number_of_raters INT,
    rating FLOAT,
	rating_category NVARCHAR(100)
);

CREATE TABLE DimCustomer (
    customer_SK INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT NOT NULL,
    first_name NVARCHAR(500),
    last_name NVARCHAR(500),
    phone_number NVARCHAR(500),
    email NVARCHAR(500),
    gender NVARCHAR(50),
    age INT,
    street_address NVARCHAR(500),
    city NVARCHAR(500),
    country NVARCHAR(500),
    start_date DATETIME,
    end_date DATETIME
);



CREATE TABLE DimProduct (
    product_SK INT IDENTITY(1,1) PRIMARY KEY,
    product_id INT NOT NULL,
    product_name NVARCHAR(255),
    department_SK INT,
    aisle_SK INT,
    rating_SK INT,
    date_listed DATE
);



CREATE TABLE FactOrder (
    order_id INT ,
    customer_SK INT,
    product_SK INT,
    DateSK INT,
    unit_price FLOAT,
    discount FLOAT, -- FK to DimDate
    selling_price FLOAT,
	accm_txn_create_time DATETIME DEFAULT GETDATE(),
    accm_txn_complete_time DATETIME,
    txn_process_time_hours INT
	
);