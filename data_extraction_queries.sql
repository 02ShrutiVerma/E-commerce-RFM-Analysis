/* PROJECT: E-commerce Customer Segmentation (Olist)
OBJECTIVE: Join Customers, Orders, and Payments to extract raw data for RFM Analysis.
FILTER: Delivered orders only to ensure revenue accuracy.
*/

SELECT 
    c.customer_unique_id,
    o.order_id,
    o.order_purchase_timestamp,
    p.payment_value
FROM `faang-portfolio-olist.ecommerce_data.customers` AS c
JOIN `faang-portfolio-olist.ecommerce_data.orders` AS o 
    ON c.customer_id = o.customer_id
JOIN `faang-portfolio-olist.ecommerce_data.payments` AS p 
    ON o.order_id = p.order_id
WHERE o.order_status = 'delivered';