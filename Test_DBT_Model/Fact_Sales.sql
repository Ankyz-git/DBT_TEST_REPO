CREATE OR REPLACE TABLE fact_sales (
    sales_id INT AUTOINCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    product_id INT NOT NULL,
    store_id INT NOT NULL,
    date_id INT NOT NULL,
    quantity_sold INT DEFAULT 1,  -- Default value to prevent NULL
    total_sales_amount DECIMAL(10,2) NOT NULL
);

INSERT INTO fact_sales (customer_id, product_id, store_id, date_id, quantity_sold, total_sales_amount)
VALUES 
    (1, 1, 1, 1, 2, 2400.00),
    (2, 2, 2, 2, 1, 800.00),
    (3, 3, 3, 3, 4, 1200.00);