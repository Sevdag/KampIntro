--Select
--ANSI
Select ContactName Adi, CompanyName SirketAdi, City  Sehir from Customers

Select * from Customers where City='Berlin'

--case insensitive
select * from Products where CategoryID=1 or CategoryID=3

select * from Products where CategoryID=1 and UnitPrice >=10

select * from Products order by ProductName
select * from Products order by CategoryID, ProductName


select * from Products where CategoryID=1 order by UnitPrice desc

select count (*)Adet  from Products where CategoryID = 2


select categoryId, count(*) from Products where UnitPrice>20 group by CategoryID having count(*)<10

select products.ProductID, Products.ProductName, Products.UnitPrice, Categories.CategoryName from Products 
inner join Categories on Products.CategoryID=Categories.CategoryID where Products.UnitPrice>10


--DTO - Data Transformation Object
--Inner Join-İki tabloda eşleşenleri getirir
-- Left join ise solda olup sağda olmayanları getirir
--Right Join ise sağda olup solda olmayanları getirir

select * from Products p left join [Order Details] od
on p.ProductID=od.ProductID

select * from Customers c left join Orders o on c.CustomerID=o.CustomerID where o.CustomerID is null

select * from Products p inner join [Order Details] od
on p.ProductID=od.ProductID
inner join Orders o on o.OrderID=od.OrderID

Select ProductName pName,
Sum ([Order Details].Quantity*[Order Details].UnitPrice)as TotalgainAmount
from Products inner join [Order Details] on [Order Details].ProductID=Products.ProductID
group by ProductName
Order by TotalgainAmount desc


