CREATE TABLE countries(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) UNIQUE NOT NULL
);
CREATE TABLE customers(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(1) CHECK ( gender IN ('M', 'F') ),
    age INTEGER NOT NULL CHECK ( age > 0 ),
    phone_number CHAR(10) NOT NULL,
    country_id INTEGER REFERENCES countries(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
);
CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    description VARCHAR(250),
    recipe TEXT,
    price NUMERIC(10, 2) CHECK(price > 0) NOT NULL
);
CREATE TABLE feedbacks(
    id SERIAL PRIMARY KEY,
    description VARCHAR(255),
    rate NUMERIC(4, 2) check ( rate BETWEEN 0 AND 10),
    product_id INTEGER REFERENCES products(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    customer_id INTEGER REFERENCES customers(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
);
CREATE TABLE distributors(
    id SERIAL PRIMARY KEY,
    name VARCHAR(25) UNIQUE NOT NULL,
    address VARCHAR(30) NOT NULL,
    summary VARCHAR(200) NOT NULL,
    country_id INTEGER REFERENCES countries(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL
);
CREATE TABLE ingredients(
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(200),
    country_id INTEGER REFERENCES countries(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    distributor_id INTEGER REFERENCES distributors(id) ON DELETE CASCADE ON UPDATE CASCADE NOT NULL 
);
CREATE TABLE products_ingredients(
    product_id INTEGER REFERENCES products(id) ON DELETE CASCADE ON UPDATE CASCADE,
    ingredient_id INTEGER REFERENCES ingredients(id) ON DELETE CASCADE ON UPDATE CASCADE
);