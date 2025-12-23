-------------------------
--CREATE VIEW CALENDAR
---------------------------
create view gold.calendar AS
select * from openrowset(
    bulk 'https://awsdatalake.blob.core.windows.net/silver/Adventure-DataEngineering/AdventureWorks_Calendar/',
    format ='parquet'
) as query1

-----------------------------
--CREATE VIEW CUSTOMERS------
-----------------------------
create view gold.customers AS
select * from openrowset(
    bulk 'https://awsdatalake.blob.core.windows.net/silver/Adventure-DataEngineering/AdventureWorks_Customers/',
    format ='parquet'
) as query1

------------------------------------
--CREATE VIEW product subcategories
------------------------------------
create view gold.prosubcat AS
select * from openrowset(
    bulk 'https://awsdatalake.blob.core.windows.net/silver/Adventure-DataEngineering/AdventureWorks_Product_Subcategories/',
    format ='parquet'
) as query1

------------------------------------
--CREATE VIEW products
------------------------------------
create view gold.products AS
select * from openrowset(
    bulk 'https://awsdatalake.blob.core.windows.net/silver/Adventure-DataEngineering/AdventureWorks_Products/',
    format ='parquet'
) as query1

------------------------------------
--CREATE VIEW returns
------------------------------------
create view gold.advreturns AS
select * from openrowset(
    bulk 'https://awsdatalake.blob.core.windows.net/silver/Adventure-DataEngineering/AdventureWorks_Returns/',
    format ='parquet'
) as query1

------------------------------------
--CREATE VIEW territories
------------------------------------
create view gold.territories AS
select * from openrowset(
    bulk 'https://awsdatalake.blob.core.windows.net/silver/Adventure-DataEngineering/AdventureWorks_Territories/',
    format ='parquet'
) as query1

------------------------------------
--CREATE VIEW sales
------------------------------------
create view gold.sal AS
select * from openrowset(
    bulk 'https://awsdatalake.blob.core.windows.net/silver/Adventure-DataEngineering/AdventureWorks_Sales/',
    format ='parquet'
) as query1
