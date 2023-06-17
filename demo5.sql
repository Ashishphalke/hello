select * from orders;
select * from product;
select * from orders,product;
select * from orders,product where orders.pid=product.pid;
select * from orders inner join product on orders.pid=product.pid;
select oid as orderid, qty as quantity , product.pid as productid , pname as 'Product Name'
from product, orders where product.pid=orders.pid;
select oid as orderid, qty as quantity , product.pid as productid , pname as 'Product Name' , price, qty*price as Total
from product, orders where product.pid=orders.pid;
insert into orders values(3,2,null);
insert into orders values(4,5,null);
select * from orders;
select o.oid , o.qty, o.pid, p.pname,p.price
from orders o, product p
where o.pid=p.pid;
select o.oid , o.qty, o.pid, p.pname,p.price
from orders o inner join product p
where o.pid=p.pid;
select o.oid , o.qty, o.pid, p.pname,p.price
from orders o left join product p
on o.pid=p.pid;
select o.oid , o.qty, o.pid, p.pname,p.price
from orders o right join product p
on o.pid=p.pid;