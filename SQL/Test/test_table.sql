DROP DATABASE IF EXISTS smart_auto;
CREATE DATABASE IF NOT EXISTS smart_auto
    CHARACTER SET "utf8"
    COLLATE "utf8_unicode_ci";
USE smart_auto;

DROP TABLE IF EXISTS
customer,
car,
car_order;

CREATE TABLE customer
(
	customer_id 		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	fullname	  		VARCHAR(100) NOT NULL,
    phone				INT UNSIGNED,
    email				VARCHAR (50) UNIQUE NOT NULL,
    address				VARCHAR(100),
    note				TEXT
);

CREATE TABLE car
(
	car_id 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	maker	  		VARCHAR(100) NOT NULL,
    model			VARCHAR(100) NOT NULL,
    years			INT UNSIGNED,
    color		 	VARCHAR(100),
    note			TEXT
);


CREATE TABLE car_oder
(
	order_id 			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	customer_id	  		TINYINT UNSIGNED,
    car_id				TINYINT UNSIGNED,
    amounts				INT UNSIGNED,
    sale_price	 		INT UNSIGNED,
    order_date 			DATE,
    delivery_date		DATE,
    delivery_address	VARCHAR(100),
    order_status		ENUM ('0', '1', '2') DEFAULT '0',
    note				TEXT,
    FOREIGN KEY (car_id) REFERENCES  car(car_id),
    FOREIGN KEY (customer_id) REFERENCES  customer(customer_id)
);



