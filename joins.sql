

--customer table
create table customer (
cust_id serial primary key,
cust_name varchar (100) not null
);

select * from customer;

--order table
create table orders (
ord_id serial primary key,
ord_date date not null,
ord_amount numeric not null,
cust_id int not null, 
foreign key (cust_id) 
references
customer(cust_id)
);
select * from orders;
-- data insert in customer table
insert into customer (cust_name)
values
('Ahmad'),('Ali'), ('Paul'),('Alex');

--data insert in orders table
insert into orders (ord_date, ord_amount, cust_id)
values
('2026-03-02',250.00,1),
('2026-03-05',600.00,2),
('2026-03-06',350.00,4),
('2026-04-08',900.00,1),
('2026-02-08',620.00,2),
('2026-03-09',370.00,4);

--inner join
select * from customer inner join 
orders on orders.cust_id = customer.cust_id;

--inner join group by
select cust_name from customer inner join 
orders on orders.cust_id = customer.cust_id
group by cust_name;
--natural join
SELECT cust_name
FROM customer, orders WHERE customer. cust_id = orders. ord_id;

--left join
select * from customer left join 
orders on orders.cust_id = customer.cust_id;
--left join
SELECT customer.cust_id, 
       customer.cust_name, 
       orders.ord_date, 
       orders.ord_amount
FROM customer
LEFT OUTER JOIN orders
ON customer.cust_id = orders.cust_id;



--right join
select * from customer right join 
orders on orders.cust_id = customer.cust_id;
