/*We need to provide order_id	customers	city	state	order_date	total_units	revenue	product_name	category_name	brand_name	store_name	sales_rep these field are scattered across 9 diff table in bike store database ,so table joins are applied to generate the data 
for example
i will get orderid from sale.order ,customer name ,city from sales.cutomer
revenue and volume from sales.orderitems*/
select ord.order_id  ,concat(cust.first_name,' ',cust.last_name ), cust.city, cust.state, ord.order_date  from sales.orders ord
join sales.customers cust on ord.customer_id =cust.customer_id ;
/*revenue and volume from sales.orderitems 
Revenue=Quantity Sold×Unit Price
i have two functions in query so add groupy in order to work query
*/
select ord.order_id  ,concat(cust.first_name,' ',cust.last_name ) as customers, 
 cust.city, cust.state, ord.order_date , sum(itm.quantity) as Total_units,
 sum(itm.quantity *itm.list_price) as revenue from sales.orders ord
join sales.customers cust on ord.customer_id =cust.customer_id 
join sales.order_items itm on ord.order_id=itm.order_id  group by ord.order_id; 

-- or to cal per customer revenue

select ord.order_id  ,concat(cust.first_name,' ',cust.last_name ) as customers, 
 cust.city, cust.state, ord.order_date , sum(itm.quantity) as Total_units,
 sum(itm.quantity *itm.list_price) as revenue from sales.orders ord
join sales.customers cust on ord.customer_id =cust.customer_id 
join sales.order_items itm on ord.order_id= itm.order_id  group by ord.order_id, customers, 
 cust.city, cust.state; 

 
 -- name of the product that were purshased 
 
 select ord.order_id  ,concat(cust.first_name,' ',cust.last_name ) as customers, 
 cust.city, cust.state, ord.order_date , sum(itm.quantity) as Total_units,
 sum(itm.quantity *itm.list_price) as revenue ,pro.product_name  from sales.orders ord
join sales.customers cust on ord.customer_id =cust.customer_id 
join sales.order_items itm on ord.order_id= itm.order_id 
join production.products pro on pro.product_id=itm.product_id group by ord.order_id ,pro.product_name ;

-- management wants to know the category of the product were purchased
select ord.order_id  ,concat(cust.first_name,' ',cust.last_name ) as customers, 
 cust.city, cust.state, ord.order_date , sum(itm.quantity) as Total_units,
 sum(itm.quantity *itm.list_price) as revenue ,pro.product_name ,cat.category_name from sales.orders ord
join sales.customers cust on ord.customer_id =cust.customer_id 
join sales.order_items itm on itm.order_id =ord.order_id 
join production.products pro on pro.product_id=itm.product_id
join production.categories cat on  cat.category_id=pro.category_id group by ord.order_id , customers, 
 cust.city, cust.state, ord.order_date ,pro.product_name,cat.category_name;


-- also wanna know store name where sale took place
select ord.order_id  ,concat(cust.first_name,' ',cust.last_name ) as'customers', 
 cust.city, cust.state, ord.order_date , sum(itm.quantity) as 'Total_units',
 sum(itm.quantity *itm.list_price) as 'revenue' ,pro.product_name ,cat.category_name 
 ,sto.store_name , concat(sta.first_name,' ',sta.last_name) as 'salesrepresentative' from sales.orders ord
join sales.customers cust on ord.customer_id =cust.customer_id 
join sales.order_items itm on itm.order_id =ord.order_id 
join production.products pro on pro.product_id=itm.product_id
join production.categories cat on  cat.category_id=pro.category_id 
join sales.stores sto on ord.store_id= sto.store_id
join sales.staffs sta on sto.store_id= sta.store_id
group by ord.order_id , customers,  cust.city, cust.state, ord.order_date ,
pro.product_name,cat.category_name,sto.store_name ,salesrepresentative;

-- 




