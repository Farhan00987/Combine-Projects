CREATE TABLE digital_wallet_transactions (
    transaction_id UUID PRIMARY KEY,
    user_id VARCHAR(255),
    transaction_date DATE,
    product_category VARCHAR(255),
    product_name VARCHAR(255),
    merchant_name VARCHAR(255),
    product_amount NUMERIC,
    transaction_fee NUMERIC,
    cashback NUMERIC,
    loyalty_points INTEGER,
    payment_method VARCHAR(255),
    transaction_status VARCHAR(255),
    merchant_id VARCHAR(255),
    device_type VARCHAR(255),
    location VARCHAR(255)
);

COPY digital_wallet_transactions
FROM 'C:\Users\mrall\Desktop\data anlayst\digital_wallet_transactions.CSV'
DELIMITER ','
CSV HEADER;


select * from digital_wallet_transactions
LIMIT 10;


