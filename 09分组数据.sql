--09分组数据


--SQL86 返回每个订单号各有多少行数
--OrderItems 表包含每个订单的每个产品
--编写 SQL 语句，返回每个订单号（order_num）各有多少行数（order_lines），并按 order_lines对结果进行升序排序。
--返回订单号order_num和对应订单号的行数order_lines

select order_num,COUNT(order_num) AS order_lines 
    from OrderItems 
	GROUP BY order_num
		order by order_lines;
		
		
		
--SQL87 每个供应商成本最低的产品
--有Products表，含有字段prod_price代表产品价格，vend_id代表供应商id
--编写 SQL 语句，返回名为 cheapest_item 的字段，该字段包含每个供应商成本最低的产品（使用 Products 表中的 prod_price），然后从最低成本到最高成本对结果进行升序排序。
--返回供应商id vend_id和对应供应商成本最低的产品cheapest_item。

select vend_id,MIN(prod_price) AS cheapest_item
    from Products 
	GROUP BY vend_id
		order by cheapest_item;
				

--SQL88 返回订单数量总和不小于100的所有订单的订单号
--OrderItems代表订单商品表，包括：订单号order_num和订单数量quantity。
--请编写 SQL 语句，返回订单数量总和不小于100的所有订单号，最后结果按照订单号升序排序。
--返回order_num订单号。

select order_num
    from OrderItems 
	WHERE quantity >= 100
		order by order_num;
				
				
--SQL89 计算总和
--OrderItems表代表订单信息，包括字段：订单号order_num和item_price商品售出价格、quantity商品数量。
--编写 SQL 语句，根据订单号聚合，返回订单总价不小于1000 的所有订单号，最后的结果按订单号进行升序排序。
--提示：总价 = item_price 乘以 quantity


select order_num,sum(item_price*quantity) as total_price
    from OrderItems 
        group by order_num
	having  total_price >= 1000 
		order by order_num;




--SQL90 纠错3
--OrderItems表含有order_num订单号
--返回订单号order_num和出现的次数items

SELECT
  order_num,
  COUNT(*) AS items
FROM
  OrderItems
GROUP BY
  order_num
HAVING
  COUNT(*) >= 3
ORDER BY
  order_num;
