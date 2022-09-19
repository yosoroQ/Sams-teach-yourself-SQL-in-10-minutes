--08汇总数据

--SQL83 确定已售出产品的总数
--OrderItems表代表售出的产品，quantity代表售出商品数量。
--写 SQL 语句，确定已售出产品的总数。
--返回items_ordered列名，表示已售出商品的总数。

select SUM(quantity)items_ordered from OrderItems;


--SQL84 确定已售出产品项 BR01 的总数
--OrderItems表代表售出的产品，quantity代表售出商品数量，产品项为prod_id。
--【问题】修改创建的语句，确定已售出产品项（prod_id）为"BR01"的总数。
--【示例结果】返回商品项已订购订单数

select SUM(quantity)items_ordered 
	from OrderItems
		where prod_id = 'BR01';



--SQL85 确定 Products 表中价格不超过 10 美元的最贵产品的价格
--编写 SQL 语句，确定 Products 表中价格不超过 10 美元的最贵产品的价格（prod_price）。将计算所得的字段命名为 max_price。
--返回十元以下最高价格max_price。

select max(prod_price) 
	as max_price 
		from Products
			where prod_price <= 10 ;