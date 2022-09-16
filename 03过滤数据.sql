--03过滤数据

--SQL67 返回固定价格的产品
--从 Products 表中检索产品 ID（prod_id）和产品名称（prod_name），只返回价格为 9.49 美元的产品。
select prod_id,prod_name from Products where prod_price=9.49;

--SQL68 返回更高价格的产品
--从 Products 表中检索产品 ID（prod_id）和产品名称（prod_name），只返回价格为 9 美元或更高的产品。
select prod_id,prod_name from Products where prod_price >= 9;

--SQL69 返回产品并且按照价格排序
select 
    prod_name,prod_price 
    from 
Products 
    where 
    prod_price >=3 and prod_price <=6
    order by 
    prod_price;
		

--SQL70 返回更多的产品
--从 OrderItems 表中检索出所有不同且不重复的订单号（order_num），其中每个订单都要包含 100 个或更多的产品。
select order_num from OrderItems
    group by order_num
    having sum(quantity)>=100;
		