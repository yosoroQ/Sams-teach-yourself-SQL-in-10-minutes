--检索数据

--SQL60 从 Customers 表中检索所有的 ID
select cust_id from Customers ;

--SQL61 检索并列出已订购产品的清单
--检索并列出所有已订购商品（prod_id）的去重后的清单
select distinct prod_id from OrderItems;

--SQL62 检索所有列
select * from Customers;
