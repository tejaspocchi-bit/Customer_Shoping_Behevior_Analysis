
select * from customer


--	business Ques

-- Q1) What is the Total revenue genrated by male vs. female customer?

select gender, sum(purchase_amount) as revenue
from customer
group by gender

-- Q2) Which customer used a discount but still spend more than the average purchase amount?

select  customer_id, purchase_amount
from  customer
where discount_applied = 'Yes' and purchase_amount >= (select avg(purchase_amount) from customer)

-- Q3) Which are top 5 product with the highest average review rating?

select item_purchased, ROUND(AVG(review_rating::numeric),2) as "Average Product rating"
from customer
group by item_purchased
order by avg (review_rating) desc
limit 5;

-- Q4) Compare the average purchase amount between standard and express shipping.

select shipping_type,
ROUND(avg(purchase_amount),2)
from customer
where shipping_type in ('Standard','Express')
group by shipping_type

-- Q5) Do Subscribe customer spend more? compare average spend and total revenue 
-- between subscribers and non-subscribers?

select subscription_status,
count(customer_id) as total_customers,
ROUND(avg(purchase_amount),2) as avg_spend,
ROUND(avg(purchase_amount),2) as total_revenue
from customer
group by subscription_status
order by total_revenue, avg_spend desc

-- Q6) Which 5 product have the highest percentage of purchase with discount applied?

select item_purchased,
ROUND(100 * sum(case when discount_applied = 'Yes' then 1 else 0 end)/count(*) * 100,2) as discount_rate
from customer
group by item_purchased
order by discount_rate desc
limit 5;

-- Q7) Segment customer into new, Returning and Loyal based on their total 
-- number of previous purchases, and show the count of each segment.

with customer_type as (
select customer_id, previous_purchases,
CASE
	when previous_purchases = 1 then 'New'
	when previous_purchases between 2 and 10 then 'Returning'
	Else 'Loyal'
	End as customer_segment
from customer
)
select customer_segment, count(*) as "Number of Customers"
from customer_type
group by customer_segment


-- Q8) What are the top 3 must  purchased within each category?

with item_count as(
select category,
item_purchased,
count(customer_id) as total_orders,
row_number() over(partition by category order by count(customer_id)desc) as item_rank
from customer
group by category, item_purchased
)

select item_rank, category, item_purchased, total_orders
from item_count
where item_rank <= 3

-- Q9) Are customer whoare repeat buyer (more than 5 previous purchase) also likely to suscribe?

select subscription_status,
count(customer_id) as repeat_buyers
from customer
where previous_purchases > 5
group by subscription_status

-- Q10) What is the revenue contribution of each age group?

select age_group,
sum(purchase_amount) as total_revenue
from customer
group by age_group
order by total_revenue desc