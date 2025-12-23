CREATE DATABASE SCOPED CREDENTIAL  cred_ahana
with 
IDENTITY ='Managed Identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH (
    LOCATION ='https://awsdatalake.blob.core.windows.net/silver',
    CREDENTIAL=cred_ahana
    )


CREATE EXTERNAL DATA SOURCE source_gold
WITH (
    LOCATION ='https://awsdatalake.blob.core.windows.net/gold',
    CREDENTIAL=cred_ahana
    )

CREATE EXTERNAL FILE FORMAT format_parquet
with (
    format_type =PARQUET,
    DATA_COMPRESSION='org.apache.hadoop.io.compress.SnappyCodec'
)

--create external table retsales--
create external table gold.extsales
with (
    LOCATION ='extsales',
    DATA_SOURCE=source_gold,
    FILE_FORMAT= format_parquet
) as 
select * from gold.sal

--display----------------------
select * from gold.extsales


-----------------------------------
--create external table customers--
------------------------------------

create external table gold.extcustomers
with (
    LOCATION ='extcustomers',
    DATA_SOURCE=source_gold,
    FILE_FORMAT= format_parquet
) as 
select * from gold.customers

-----------------------------------
--create external table calendar--
------------------------------------

create external table gold.extcal
with (
    LOCATION ='extcalendar',
    DATA_SOURCE=source_gold,
    FILE_FORMAT= format_parquet
) as 
select * from gold.calendar

-----------------------------------
--create external table products--
------------------------------------
create external table gold.extproducts
with (
    LOCATION ='extproducts',
    DATA_SOURCE=source_gold,
    FILE_FORMAT= format_parquet
) as 
select * from gold.products

-----------------------------------
--create external table territories--
------------------------------------
create external table gold.extterritories
with (
    LOCATION ='extterritories',
    DATA_SOURCE=source_gold,
    FILE_FORMAT= format_parquet
) as 
select * from gold.territories







