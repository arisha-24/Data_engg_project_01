CREATE DATABASE SCOPED CREDENTIAL credential_arisha
WITH IDENTITY = 'managed identity'


CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION='https://destorageproject01.dfs.core.windows.net/silver',
    CREDENTIAL = credential_arisha
)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION='https://destorageproject01.dfs.core.windows.net/gold',
    CREDENTIAL = credential_arisha
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION= 'org.apache.hadoop.io.compress.SnappyCodec'
)

---------------------
---CREATE EXTERNAL TABLE extsales
-------------------

CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION='extsales',
    DATA_SOURCE= source_gold,
    FILE_FORMAT= format_parquet
)AS
SELECT * FROM gold.Sales


SELECT * FROM gold.extsales