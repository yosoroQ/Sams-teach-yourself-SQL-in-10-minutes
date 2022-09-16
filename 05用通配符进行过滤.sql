
--05用通配符进行过滤


--SQL75 检索产品名称和描述（一）
--从 Products 表中检索产品名称（prod_name）和描述（prod_desc），仅返回描述中包含 toy 一词的产品名称
select prod_name,prod_desc 
    from Products
    where prod_desc like '%toy%';
		

--SQL76 检索产品名称和描述（二）
--从 Products 表中检索产品名称（prod_name）和描述（prod_desc），仅返回描述中未出现 toy 一词的产品，最后按”产品名称“对结果进行排序。
select prod_name,prod_desc 
    from Products
    where prod_desc not like '%toy%'
    order by prod_name;
		
--SQL77 检索产品名称和描述（三）
--从 Products 表中检索产品名称（prod_name）和描述（prod_desc），仅返回描述中同时出现 toy 和 carrots 的产品。有好几种方法可以执行此操作，但对于这个挑战题，请使用 AND 和两个 LIKE 比较。
select prod_name,prod_desc 
    from Products
    where prod_desc like '%toy%' and prod_desc like '%carrots%';
		

--SQL78 检索产品名称和描述（四）
--从 Products 表中检索产品名称（prod_name）和描述（prod_desc），仅返回在描述中以先后顺序同时出现 toy 和 carrots 的产品。提示：只需要用带有三个 % 符号的 LIKE 即可。
select prod_name,prod_desc 
    from Products
    where prod_desc like '%toy%' and prod_desc like '%carrots%' 
    order by prod_desc desc;