DECLARE @Result AS TABLE
    (
        Token VARCHAR(MAX)
    )
    
    INSERT INTO @Result
    
     exec  [dbo].[APICaller_POST]
    	 @URL = 'https://wealthdev.sasfin.com:443/WealthAPI/api/Authenticate'
    	,@BodyJson = '{
                ClientId :"JyKrxwJpkJ4Plf7ObU9xMg==",
                ClientSecret: "Q34L0Pdwc2gtRzDfXgMinen4lUtXUmVvK80cRE+oJsFmJ2GweuBViRzanPxsg/aMuY70kzSX0BkWRCFYUycquQ=="
            }'
    
    DECLARE @Token AS VARCHAR(MAX)
    
    SELECT TOP 1 @Token = CONCAT('Bearer ',Json.Token)
     FROM @Result
      CROSS APPLY ( SELECT value AS Token FROM OPENJSON(Result)) AS [Json]
    
    EXEC [dbo].[APICaller_GETAuth] 
         @URL	  = 'http://localhost:5000/api/values'
       , @Token = @Token