CREATE OR ALTER VIEW vw_StockPrices AS
SELECT *
FROM OPENROWSET(
    BULK 'part-00000-f68eeb82-8cc6-468e-979a-cc6a54d47b79-c000.csv',
    DATA_SOURCE = 'raw_ext_data',
    FORMAT = 'CSV',
    PARSER_VERSION = '2.0',
    FIRSTROW = 2
) WITH (
    datetime DATE 1,
    [open] FLOAT 2,
    high FLOAT 3,
    low FLOAT 4,
    [close] FLOAT 5,
    volume BIGINT 6
) AS stock_data;

-- Now query the view
SELECT * FROM vw_StockPrices;
