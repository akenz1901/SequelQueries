/**SELECT top 5 Buyer, Department
FROM SKU_DATA;**/



/** SELECT warehouseid, quantityonhand, quantityonorder
From inventory;**/

/**SELECT *
FROM CATALOG_SKU_2018
WHERE DateOnWebSite = '2018-01-01';**/

/**SELECT SKU_description, Buyer, department
FROM SKU_DATA
WHERE Department = 'Climbing';**/

/**SELECT *
FROM ORDER_ITEM
ORDER BY Price DESC, OrderNumber ASC;

SELECT *
FROM SKU_DATA
WHERE DEPARTMENT = 'Water Sport'
 AND Buyer = 'Nancy Meyers';
 
 SELECT *
 From Inventory
 Where SKU = '100100'
 AND quantityonorder = '50';**/
 
 /*SELECT *
 FROM SKU_DATA
 WHERE Department = 'Camping'
 OR Department = 'Climbing';/**
 
 /*Select *
 From SKU_DATA
 where department = 'Water Sports';*/
 
 /*Select *
 from order_item
 where OrderNumber = "3000"
 or ExtendedPrice = '100';*/
 
 /*Select WarehouseID, WarehouseState,manager
 from warehouse
 where manager not in ("dave jones");
 where buyer not in ("Nancy Meyers", "Cindy Lo", "Jerry Martin");*/
 
 select *
 from order_item
where ExtendedPrice >= 100
  and ExtendedPrice <= 200
  order by ExtendedPrice desc, Price asc;
 
 select *
 from order_item
 where extendedprice between 100 and 200 order by ExtendedPrice;
 
 select *
 from sku_data
 where buyer like "pete%";
 
 select *
 from sku_data
 where buyer like '%cindy%';
 
 select *
 from sku_data
 where sku like "__2%";
 
/*Getting Null from a table*/
 select *
 from catalog_sku_2017
 where CatalogPage is null;
 
 /*Using Aggregation Function*/
   Select SUM(ExtendedPrice),
    AVG(ExtendedPrice),
	MIN(ExtendedPrice),
	MAX(ExtendedPrice)
From Order_Item;

Select Count(*) as NumberOfRows
From inventory;

select count(distinct department)
from sku_data;

select sum(sku)
from catalog_sku_2017;

select OrderNumber, SKU, (ExtendedPrice / Price) AS PIP
from order_item
order by ordernumber, SKU;
 
Select Sku, Sku_description, concat(buyer, "in" ,Department) AS
tit
from SKu_DATA
order by Sku; 
 
 Select department, count(Sku) as NumberOfCatalogItems
 from catalog_sku_2017
 where CatalogPage IS NOT NULL
 Group By department;
 
 /**Using Having for Aggregate function
 Having clause specifies which groups will be used in the final result
 where before Group by
 where before Group by
 where and having clauses
 where before having
 ETL -- Extract Transform Load
 Tranfaorming means cleaning data
 ELT -- Is mostly used in NoSQL Database
 
 Quering multiple tables
 SQL Subquery
 
 NESTED things are always sumething in something
 such as query in query
 
 Sql join operation, the SQL join Operator
 Implicit is when you didn't join
 Explicit means when you use word join
 */
 
 Select department, count(Sku) as NumberOfCatalogItems
 from catalog_sku_2017
 where CatalogPage IS NOT NULL
 Group By department
 having count(sku) > 2;
 
 select distinct buyer, department,SKU_Description
 from sku_data
 where sku in
  (select sku
 from order_item
 where orderNumber in
(Select OrderNumber
 from retail_order
 where orderMonth = 'January'
 and orderYear = 2018));
 
/*Impliciting*/

Select *
from retail_order, order_item;

Select *
from retail_order, order_item
where retail_order.OrderNumber = order_item.orderNumber;

select *
from retail_order;

select *
from order_item;

Select *
from retail_order, order_item
where retail_order.OrderNumber = order_item.orderNumber
order by retail_order.OrderNumber, order_item.sku;

select buyer, sku_data.SKU, sku_description, Sum(ExtendedPrice) AS BuyerSKURevenue
from sku_data, order_item
where sku_data.sku = order_item.sku
group by buyer, sku_data.sku, sku_description
order by buyerSKURevenue desc;

/* Explicit Join 
in no case from and where should come before on*/

-- select *
-- from retail_order join order_item
-- on retail_order.orderNumber = order_Item.orderNumber
-- where orderYear = 2017
-- order by retail_order.orderNumber, order_item.sku;


-- Select oi.OrderNumber, Quantity, SD.SKU, SKU_Description, Department, Buyer
-- From order_item, AS OI Right Outer join SKU_DATA AS SD ON OI.SKU = SD.SKU
-- Order By OI.orderNumber, SD.sku;

-- Select Sku, Sku_Description, Department
-- from catalog_sku_2017
-- union all
-- Select Sku, Sku_Description, Department
-- From catalog_sku_2018;

Select catalog_sku_2017.SKU, catalog_sku_2017.Sku_Description, catalog_sku_2017.Department
from catalog_sku_2017
where catalog_sku_2017.SKU NOT IN (Select catalog_sku_2018.Sku from catalog_sku_2018);

-- , catalog_sku_2017.Sku_Description, catalog_sku_2017.Department
/*Class Work, catalog_sku_2018.Sku_Description, catalog_sku_2018.Department
**/
SELECT *
FROM CATALOG_SKU_2018
WHERE DateOnWebSite = '2018-01-01';

Select *
from sku_data
where department = 'Camping';

-- Select first 10 rows Buyer, department
-- from sku_data;

select *
from rating;

