--Querey 1

SELECT dbo.Customers.*
FROM   dbo.Customers
--Querey 2
select Country
from Customers

--Querey 3

SELECT CustomerID
FROM    dbo.Customers
WHERE  (CustomerID LIKE N'Bl%')

--Querey 4
SELECT        TOP (100) OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry
FROM            dbo.Orders

--Querey 5
SELECT        PostalCode
FROM            dbo.Customers
WHERE        (PostalCode = N'1010') OR
                         (PostalCode = N'3012') OR
                         (PostalCode = N'12209') OR
                         (PostalCode = N'05023')

--Querey 6

SELECT        ShipRegion
FROM            dbo.Orders
WHERE        (ShipRegion IS NOT NULL)

--Querey 7

SELECT        TOP (100) PERCENT CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax
FROM            dbo.Customers
ORDER BY Country, City

--Querey 8

Insert into Customers (CustomerID, CompanyName, ContactName, ContactTitle,Address, City , Region, PostalCode,Country,Phone,Fax)
Values ('Phill', 'Philly_industrys','here is philly', 'The Boss', '31619 Pinto','Warren', 'BC','48081','UK','264-1212','0921-12 34 17');

--Querey 9

UPDATE Orders
set ShipRegion = 'EuroZone'
where ShipCountry = 'France'

--Querey 10 

DELETE FROM [Order Details]
WHERE Quantity = '1'


--Querey 11

SELECT        AVG(Quantity) AS Average, MAX(Quantity) AS MAX, MIN(Quantity) AS MIN
FROM            dbo.[Order Details]

 --QUEREY 12

SELECT        AVG(Quantity) AS Average, MAX(Quantity) AS MAX, MIN(Quantity) AS MIN, OrderID
FROM            dbo.[Order Details]
GROUP BY OrderID

--Querey 13

SELECT        CustomerID
FROM            dbo.Orders
WHERE        (OrderID = 10290)

--Querey 14

--inner join
SELECT        dbo.Orders.OrderID, dbo.Customers.CustomerID
FROM            dbo.Customers INNER JOIN
                         dbo.Orders ON dbo.Customers.CustomerID = dbo.Orders.CustomerID

--left join
SELECT     dbo.Orders.OrderID, dbo.Customers.CustomerID
FROM            dbo.Orders LEFT JOIN
                         dbo.Customers ON dbo.Orders.CustomerID = dbo.Customers.CustomerID

--right join 

SELECT        dbo.Customers.CustomerID, dbo.Orders.OrderID
FROM            dbo.Customers RIGHT JOIN
                         dbo.Orders ON dbo.Customers.CustomerID = dbo.Orders.CustomerID


--QUEREY 15

SELECT        FirstName
FROM            dbo.Employees
WHERE (ReportsTo = Null)


--Querey 16
SELECT DISTINCT       dbo.Employees.FirstName, dbo.EmployeeTerritories.EmployeeID
FROM            dbo.Employees INNER JOIN
                         dbo.EmployeeTerritories ON dbo.Employees.EmployeeID = dbo.EmployeeTerritories.EmployeeID
WHERE (ReportsTo = 2)



-- I 100% LOVE THIS SQL STUFF !!! I AM GOING TO BE A DATABASE MASTER !!!!