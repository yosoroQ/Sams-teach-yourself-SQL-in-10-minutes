--04高级数据过滤


--SQL71 检索供应商名称
--从 Vendors 表中检索供应商名称（vend_name），仅返回加利福尼亚州的供应商（这需要按国家[USA]和州[CA]进行过滤，没准其他国家也存在一个CA）
select vend_name 
	from Vendors 
	where vend_state = 'CA' 
	AND vend_country = 'USA';
	
--SQL72 检索并列出已订购产品的清单
--查找所有订购了数量至少100 个的 BR01、BR02 或BR03 的订单。你需要返回 OrderItems 表的订单号（order_num）、产品 ID（prod_id）和数量（quantity），并按产品 ID 和数量进行过滤。
select order_num,prod_id,quantity 
    from OrderItems 
    where prod_id 
    in('BR01','BR02','BR03') and quantity >=100;
		
--SQL73 返回所有价格在 3美元到 6美元之间的产品的名称和价格
--返回所有价格在 3美元到 6美元之间的产品的名称（prod_name）和价格（prod_price），使用 AND操作符，然后按价格对结果进行升序排序
select prod_name,prod_price 
    from Products
    where prod_price >=3 
    And prod_price <=6
    order by prod_price;
		

--SQL74 纠错2
SELECT vend_name 
    FROM Vendors 
    WHERE vend_country = 'USA' AND vend_state = 'CA'
    ORDER BY vend_name ;