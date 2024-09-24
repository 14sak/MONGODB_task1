--Task_1:Mongodb

select * from sales
select * from product
select * from customer

select product_id from sales where quantity>5

select distinct order_id from sales where ship_mode = 'First Class'

select segment,count(customer_id) from customer
where state ='Texas'
group by segment

select state,count(postal_code) from customer where region='South'
group by state

select sub_category,count(product_id) from product where category='Furniture'
group by sub_category


select distinct order_date,count(order_line) from sales
where ship_date between '01-01-2016' and '31-05-2016'
group by order_date
order by count(order_line) desc

select customer_name from customer where city='Los Angeles'
group by customer_name