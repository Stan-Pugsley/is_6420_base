-----------------------------
--Sample queries
-----------------------------

--top 10 most recent orders
select order_id, order_date from order_header where order_date is not null order by order_date desc limit 10 --orders in 2023

--customers in 2023
select count(distinct customer_id) from order_header where order_date >= '2023-01-01' 

--years for orders
select to_char(max(order_date),'YYYY')from order_header 