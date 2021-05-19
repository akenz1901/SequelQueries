Use cape_codd;

Select  TOP 10 Sku, Department
From SKU_DATA;

SELECT SUM (ExtendedPrice) AS OrderItemSum,
MIN(ExtendedPrice) AS OrderItemMin, 
MAX(ExtendedPrice) AS OrderItemMax,
FROM 	ORDER_ITEM;

1.	SELECT Department, COUNT(*) 
2.	FROM SKU_DATA;

Select Sku, Sku_Description, Department
from catalog_sku_2017
Union
Select Sku, Sku_Description, Department
From catalog_sku_2018;

select *
from SKU_DATA;