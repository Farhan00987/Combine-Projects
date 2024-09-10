--1. Most Popular Product Categories

select product_category, count(*) as transaction_count
from digital_wallet_transactions 
group by product_category 
ORDER by transaction_count DESC
LIMIT 5;


-- 2.Highest Cashback by Product Category

select product_category, avg(cashback) as average_cashback
from digital_wallet_transactions
GROUP by product_category
ORDER by average_cashback DESC
LIMIT 5;


-- 3.Most frequently used payment methods

select payment_method ,count(*) as transaction_count
from digital_wallet_transactions
GROUP by payment_method
ORDER by transaction_count desc
LIMIT 5;

-- 4. Average transaction amount by payment_method

select payment_method , avg(product_amount) as avg_amount
from digital_wallet_transactions
GROUP by payment_method
ORDER by avg_amount desc
LIMIT 5;


--5. Count of Transactions by Status

select transaction_status , count(*) as transaction_count
from digital_wallet_transactions
group by transaction_status;


--6. Top 5 Merchant by cashback 

select merchant_name,sum(cashback) as total_cashback
from digital_wallet_transactions
group by merchant_name 
order by total_cashback DESC
limit 5;

--7. Cashback distrubution by device type 

select device_type, avg(cashback) as average_cashback
from digital_wallet_transactions
group by device_type;


--8. Montly cashback trend 

SELECT DATE_TRUNC('month', transaction_date) AS month, SUM(cashback) AS total_cashback
FROM digital_wallet_transactions
GROUP BY month
ORDER BY  total_cashback desc;


--9. Cashback and Loyalty Points Correlation

SELECT CORR(cashback, loyalty_points) AS correlation
FROM digital_wallet_transactions;


--10.  Loyalty Points Distribution by Product Category

SELECT product_category, AVG(loyalty_points) AS avg_loyalty_points
FROM digital_wallet_transactions
GROUP BY product_category
ORDER BY avg_loyalty_points DESC;




