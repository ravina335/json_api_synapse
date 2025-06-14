CREATE MASTER KEY ENCRYPTION BY PASSWORD ='abcdefguhgh78h123..'
CREATE DATABASE SCOPED CREDENTIAL rvncreds
WITH
     IDENTITY= 'managed identity'

SELECT *
FROM OPENROWSET(
    BULK 'part-00000-f68eeb82-8cc6-468e-979a-cc6a54d47b79-c000.csv',   -- path to the new CSV file
    DATA_SOURCE = 'raw_ext_data',   -- your external data source name
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    FIRSTROW = 2
) WITH (
    [datetime] DATE 1,
    [open] FLOAT 2,
    [high] FLOAT 3,
    [low] FLOAT 4,
    [close] FLOAT 5,
    [volume] BIGINT 6
) AS stock_data;



