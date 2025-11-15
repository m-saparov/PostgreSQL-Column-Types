DROP TABLE products;

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(256) NOT NULL,
    description TEXT,
    category VARCHAR(64) NOT NULL,
    price DECIMAL(10, 2) NOT NULL CHECK(price >= 0.0),
    rating DECIMAL(3, 1) NOT NULL DEFAULT 10.0,
    stock INT NOT NULL DEFAULT 0 CHECK(stock >= 0),
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

