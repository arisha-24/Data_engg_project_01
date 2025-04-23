---------------------------
--CREATE VIEW CALENDAR
---------------------------
CREATE VIEW gold.calendar
AS
SELECT
    * 
FROM
    OPENROWSET(
        BULK 'https://destorageproject01.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
        FORMAT ='PARQUET' 
    )AS QUER1

    ---------------------------
--CREATE VIEW customers
---------------------------
CREATE VIEW gold.customers
AS
SELECT
    * 
FROM
    OPENROWSET(
        BULK 'https://destorageproject01.dfs.core.windows.net/silver/AdventureWorks_Customers/',
        FORMAT ='PARQUET' 
    )AS QUER1


------------------------
--CREATE VIEW Product_Categories
---------------------------
CREATE VIEW gold.Product_Categories
AS
SELECT
    * 
FROM
    OPENROWSET(
        BULK 'https://destorageproject01.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
        FORMAT ='PARQUET' 
    )AS QUER1    


--------------------------------
--CREATE VIEW Product_Subcategories
---------------------------
CREATE VIEW gold.Product_Subcategories
AS
SELECT
    * 
FROM
    OPENROWSET(
        BULK 'https://destorageproject01.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
        FORMAT ='PARQUET' 
    )AS QUER1        

--------------------------------
--CREATE VIEW Products
---------------------------
CREATE VIEW gold.Products
AS
SELECT
    * 
FROM
    OPENROWSET(
        BULK 'https://destorageproject01.dfs.core.windows.net/silver/AdventureWorks_Products/',
        FORMAT ='PARQUET' 
    )AS QUER1 


--------------------------------
--CREATE VIEW Returns
---------------------------
CREATE VIEW gold.Returns
AS
SELECT
    * 
FROM
    OPENROWSET(
        BULK 'https://destorageproject01.dfs.core.windows.net/silver/AdventureWorks_Returns/',
        FORMAT ='PARQUET' 
    )AS QUER1 


-------------------------------
    --CREATE VIEW Sales
---------------------------
CREATE VIEW gold.Sales
AS
SELECT
    * 
FROM
    OPENROWSET(
        BULK 'https://destorageproject01.dfs.core.windows.net/silver/AdventureWorks_Sales/',
        FORMAT ='PARQUET' 
    )AS QUER1 


-------------------------------
    --CREATE VIEW Territories
---------------------------
CREATE VIEW gold.Territories
AS
SELECT
    * 
FROM
    OPENROWSET(
        BULK 'https://destorageproject01.dfs.core.windows.net/silver/AdventureWorks_Territories/',
        FORMAT ='PARQUET' 
    )AS QUER1 