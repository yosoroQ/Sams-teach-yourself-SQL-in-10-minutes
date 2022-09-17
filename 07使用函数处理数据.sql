--07使用函数处理数据

--SQL81 顾客登录名
--返回顾客 ID（cust_id）、顾客名称（cust_name）和登录名（user_login），其中登录名全部为大写字母，并由顾客联系人的前两个字符（cust_contact）和其所在城市的前三个字符（cust_city）组成。提示：需要使用函数、拼接和别名。

--1、字符串的截取：substring(字符串，起始位置，截取字符数）
--2 、 字符串的拼接 ： concat(字符串1 ， 字符串2 ， 字符串3, …)
--3 、 字母大写 ： upper(字符串）
select
  cust_id,
  cust_name,
  concat(
    upper(left(cust_name, 2)),
    upper(left(cust_city, 3))
  ) user_login
from
  Customers;
	
	

--SQL82 返回 2020 年 1 月的所有订单的订单号和订单日期
--返回 2020 年 1 月的所有订单的订单号（order_num）和订单日期（order_date），并按订单日期升序排序

select
  order_num,
  order_date
from
  Orders
  where month(order_date) = 1 
  and year(order_date) = 2020
  order by order_date;