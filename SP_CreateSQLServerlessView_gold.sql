use gold_db
GO

CREATE OR ALTER PROC CreateSQLServerlessView_gold @Viewname nvarchar(100)
AS
BEGIN
DECLARE @statement VARCHAR(MAX)

SET @statement = N'CREATE OR ALTER VIEW ' + @Viewname +' AS 
SELECT *
FROM
    OPENROWSET(
        BULK ''https://mrkdatalakegen1494.dfs.core.windows.net/gold/SalesLT/' + @Viewname + '/'',
        FORMAT = ''DELTA''
    ) AS [result]
'
EXEC (@statement)

END
GO
