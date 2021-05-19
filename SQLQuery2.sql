use cape_codd
Select Sku, Sku_Description, Department
from catalog_sku_2017
Union all
Select Sku, Sku_Description, Department
From catalog_sku_2018;

Select Sku, Sku_Description, Department
from catalog_sku_2017
intersect
Select Sku, Sku_Description, Department
From catalog_sku_2018;

