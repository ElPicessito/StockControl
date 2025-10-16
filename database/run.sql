IF DB_ID('Gestion_Flex_Stocks') IS NULL
BEGIN
    CREATE DATABASE Gestion_Flex_Stocks;
END
GO

USE Gestion_Flex_Stocks;
GO

:r "C:\Users\walid\Desktop\Code\Delphi\StockControl\database\database.sql"
GO

:r "C:\Users\walid\Desktop\Code\Delphi\StockControl\database\inserts.sql"
GO

:r "C:\Users\walid\Desktop\Code\Delphi\StockControl\database\triggers_views.sql"
GO
