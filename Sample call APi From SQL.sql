DECLARE @RoutingNumber AS VARCHAR(50) = '122242597'

--Public API: routingnumbers.info
DECLARE @Url  VARCHAR(200) = CONCAT('https://www.routingnumbers.info/api/name.json?','rn=',@RoutingNumber) 

DECLARE @Results AS TABLE
(
	Context varchar(max)
)

DECLARE @Result AS VARCHAR(MAX)

INSERT INTO @Results
EXEC  [dbo].[APICaller_GET] @Url

--Result: Row per value 

 SELECT  B.*
  FROM (
			SELECT Context 
			  from @Results
		)tb
	OUTER APPLY OPENJSON  (context) B

--Result: column per value.
SELECT 
		[name]	
		,[rn]		
		,[message]	
		,[code]	
 FROM (
			SELECT Context 
			  from @Results
		)tb
	OUTER APPLY OPENJSON  (context)  
  WITH
    ( [name]		VARCHAR(20) '$.name'
	, [rn]			VARCHAR(20) '$.rn'
	, [message]		VARCHAR(20) '$.message'
	, [code]		INT			'$.code'
    );