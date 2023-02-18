SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      Isaac Adams
-- Create date: 7/12/2018
-- Description: Give the JSON string and the name of the column from which you want the value
-- =============================================
CREATE FUNCTION JSON_VALUE
(
    @JSON NVARCHAR(3000),
    @column NVARCHAR(3000)
)
RETURNS NVARCHAR(3000)
AS
BEGIN

DECLARE @value NVARCHAR(3000);
DECLARE @trimmedJSON NVARCHAR(3000);

DECLARE @start INT;
DECLARE @length INT;

SET @start = PATINDEX('%' + @column + '":"%',@JSON) + LEN(@column) + 3;
SET @trimmedJSON = SUBSTRING(@JSON, @start, LEN(@JSON));
SET @length = PATINDEX('%", "%', @trimmedJSON);
SET @value = SUBSTRING(@trimmedJSON, 0, @length);

RETURN @value
END
GO