--02排序检索数据

--SQL63 检索顾客名称并且排序

--从 Customers 中检索所有的顾客名称（cust_name），并按从 Z 到 A 的顺序显示结果
select cust_name from Customers order by cust_name DESC;

--SQL64 对顾客ID和日期排序
--从 Orders 表中检索顾客 ID（cust_id）和订单号（order_num），并先按顾客 ID 对结果进行排序，再按订单日期倒序排列。
select 
    cust_id,order_num 
    from 
Orders order by cust_id, order_date desc;


--SQL65 按照数量和价格排序
--显示 OrderItems 表中的数量（quantity）和价格（item_price），并按数量由多到少、价格由高到低排序。
select 
    quantity,item_price 
    from 
OrderItems
    order by quantity desc,item_price desc;
		
--SQL66 检查SQL语句
--下面的 SQL;语句有问题吗？尝试将它改正确，使之能够正确运行，并且返回结果根据vend_name逆序排列
SELECT vend_name
    FROM Vendors 
    ORDER by vend_name DESC;