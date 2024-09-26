--Task_1:Mongodb

select * from sales
select * from product
select * from customer

--1.
select segment,count(customer_id) from customer
where state ='Texas'
group by segment 

--2.
select * from customer where city in ('Los Angeles','New York City') and age <=33 

--3.
select order_id,count(order_id) from sales
where ship_mode = 'First Class'
group by order_id
order by count(order_id) desc
 

--4.
select sub_category,count(product_id) from product where category='Furniture' group by sub_category


--5.
select customer_id,customer_name from customer where city='Los Angeles' and age<40
group by customer_name,customer_id
order by customer_name


--6.
select state,count(postal_code) from customer where region='South' group by state


--7.
select order_date,count(order_line) from sales
where ship_date between'2016_01-01' and '2016-05-31'
group by order_date
order by count(order_line) desc 


--8.
select s.order_id ,p.category from sales as s 
inner join product as p
on p.product_id=s.product_id
where p.category='Office Supplies'
group by s.order_id ,p.category