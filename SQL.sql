use reatail_analysis;


#Relationship:
# 1.One customer can place many orders._______________________________________
#Connection:
#customers.customer_id
#↓
#orders.customer_id_______________________________________



alter table orders
add constraint fk_orders_customers
foreign key (customer_id)
references customers(customer_id);

#2. orders → order_items
#One order can contain many products.
#Connection:
#orders.order_id
#↓
#order_items.order_id


alter table orders
add primary key (order_id);

alter table order_items
add constraint fk_orders
foreign key (order_id)
references orders(order_id);

#3.. products → order_items
#One product can appear in many orders.________________________________________
#Connection:
#products.product_id
#↓
#order_items.product_id

alter table products
add primary key (product_id);

alter table order_items
add constraint fk_products
foreign key (product_id)
references products(product_id);

#4.. stores → orders
#One store handles many orders.________________________________________
#Connection:
#stores.store_id
#↓
#orders.store_id_________

alter table stores
add primary key (store_id);

alter table orders
add constraint fk_stores
foreign key (store_id)
references stores(store_id);


#5.staffs → orders
#One staff handles many orders.
#Connection:
#staffs.staff_id
#↓
#orders.staff_id

alter table staffs 
add primary key (staff_id);

alter table orders
add constraint fk_staff_id
foreign key (staff_id)
references staffs(staff_id);


#6.brands → products
#One brand has many products.
#Connection:
#brands.brand_id
#↓
#products.brand_id

alter table brands
add primary key (brand_id);

alter table products
add constraint fk_brand_id
foreign key (brand_id)
references brands(brand_id);

#7.. categories → products
#One category has many products.
#Connection:
#categories.category_id
#↓
#products.category_id

alter table categories
add primary key (category_id);

alter table products
add constraint fk_category_id
foreign key (category_id)
references categories(category_id);

#8.. stores + products → stocks
#Tracks inventory.
#Connection:
#stores.store_id → stocks.store_id
#products.product_id → stocks.product_id

alter table stocks
add constraint fk_store_id
foreign key (store_id)
references stores(store_id);

ALTER TABLE stocks
ADD CONSTRAINT fk_product_id
FOREIGN KEY (product_id)
REFERENCES products(product_id);

#RELATIONSHIP
SELECT *
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id;

#Write SQL Queries

#TOTAL SALES
SELECT SUM(quantity * list_price) AS total_sales
FROM order_items;

#TOP PRODUCTS
SELECT 
p.product_name,
SUM(oi.quantity) AS total_quantity
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity DESC;

#Sales by categoy
SELECT 
c.category_name,
SUM(oi.quantity * oi.list_price) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
JOIN categories c
ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY revenue DESC;

#SALES BY STORE
SELECT 
s.store_name,
SUM(oi.quantity * oi.list_price) AS total_sales
FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN stores s
ON o.store_id = s.store_id
GROUP BY s.store_name;

#BEST CUSTOMERS
select
c.first_name, c.last_name,
SUM(oi.quantity * oi.list_price) as spending
from customers c
join orders o
on c.customer_id=o.customer_id
join order_items oi
on oi.order_id=o.order_id
group by c.customer_id
order by spending desc;

#repeated customers
select
c.first_name,c.last_name,
c.customer_id,
count(o.order_id) as total_orders
from customers c
join orders o
on c.customer_id=o.customer_id
group by c.first_name,c.last_name,c.customer_id
order by total_orders desc;

#MONTHLY SALES TREND
select month(order_date) as month,
SUM(oi.quantity * oi.list_price) as sales 
from orders o
join order_items oi
on o.order_id=oi.order_id
group by month(order_date)
order by month;

#INVENTORY ANALYSIS
SELECT 
    s.store_name,
    p.product_name,
    st.quantity
FROM stocks st
JOIN stores s
ON st.store_id = s.store_id
JOIN products p
ON st.product_id = p.product_id;

#create view
CREATE VIEW  sales_summary as
select
p.product_name,
sum(oi.quantity) as total_sales
from order_items oi
join products p
on oi.product_id=p.product_id
group by p.product_name;

select * from sales_summary





