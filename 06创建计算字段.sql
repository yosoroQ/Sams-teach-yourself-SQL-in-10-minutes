--06创建计算字段

--SQL79 别名
--从 Vendors 表中检索vend_id、vend_name、vend_address 和 vend_city，将 vend_name重命名为 vname，将 vend_city 重命名为 vcity，将 vend_address重命名为 vaddress，按供应商名称对结果进行升序排序。
select vend_id,vend_name as vname,
    vend_address as vaddress,vend_city as vcity
    from Vendors
    ORDER BY vend_name;
		
		
		
--SQL80 打折
--我们的示例商店正在进行打折促销，所有产品均降价 10%。Products表包含prod_id产品id、prod_price产品价格
--【问题】编写 SQL语句，从 Products 表中返回 prod_id、prod_price 和 sale_price。sale_price 是一个包含促销价格的计算字段。
--提示：可以乘以 0.9，得到原价的 90%（即 10%的折扣）
--【示例结果】返回产品id prod_id、产品价格prod_price、销售价格 sale_price

select prod_id,prod_price,
    prod_price*0.9 as sale_price
    from Products;