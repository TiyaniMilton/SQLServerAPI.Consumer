DECLARE @Result AS TABLE
(
    Token VARCHAR(MAX)
)

DECLARE @Ids as varchar(MAX)
SET @Ids = 'id=f458d598-8426-e711-8104-5065f38b9561&id=cab4c824-301b-e911-a976-000d3a206976'

DECLARE @Token AS VARCHAR(MAX)

DECLARE @BaseUrl AS VARCHAR(MAX)
SET @BaseUrl = 'https://wealthdev.sasfin.com:443/WealthAPI/' 

DECLARE @FullRequestUrl AS VARCHAR(MAX)
SET @FullRequestUrl = @BaseUrl + 'Demographics?' + @Ids 

DECLARE @AuthUrl AS VARCHAR(MAX)
SET @AuthUrl = @BaseUrl + 'api/Authenticate'

DECLARE @AuthJsonBody AS VARCHAR(MAX)
SET @AuthJsonBody = '{  
"ClientId": "JyKrxwJpkJ4Plf7ObU9xMg==",
"ClientSecret": "Q34L0Pdwc2gtRzDfXgMinen4lUtXUmVvK80cRE+oJsFmJ2GweuBViRzanPxsg/aMuY70kzSX0BkWRCFYUycquQ==",
}'
    
INSERT INTO @Result    
    exec  [dbo].[APICaller_POST]
    	@URL = @AuthUrl
    ,@JsonBody = @AuthJsonBody

--SELECT * FROM @Result  

SET @Token = REPLACE((SELECT * FROM @Result),'"','')

DECLARE @JsonResults AS TABLE
(
	Context nvarchar(max)
)

INSERT INTO @JsonResults    
EXEC [dbo].[APICaller_GETAuth] @FullRequestUrl, @Token

DECLARE @JsonResultsValue AS NVARCHAR(MAX)
SET @JsonResultsValue = (SELECT * FROM @JsonResults)

Select * From
parseJSON
(
        @JsonResultsValue
)

Select 
		max(case when name='Id' then convert(Varchar(50),StringValue) else '' end) as [Id],
		max(case when name='Name' then convert(Varchar(50),StringValue) else '' end) as [Name],
		max(case when name='IdNumber' then convert(Varchar(50),StringValue) else '' end) as [IdNumber],
		max(case when name='BirthDate' then convert(Varchar(50),StringValue) else '' end) as [BirthDate]
		--max(case when name='Title' then convert(Varchar(50),StringValue) else '' end) as [Title],
		--max(case when name='TitleId' then convert(Varchar(50),StringValue) else '' end) as [TitleId],
		--max(case when name='Initials' then convert(Varchar(50),StringValue) else '' end) as [Initials],
		--max(case when name='Firstname' then convert(Varchar(50),StringValue) else '' end) as [Firstname],
		--max(case when name='PreferedName' then convert(Varchar(50),StringValue) else '' end) as [PreferedName],
		--max(case when name='Surname' then convert(Varchar(50),StringValue) else '' end) as [Surname],
		--max(case when name='FullName' then convert(Varchar(50),StringValue) else '' end) as [FullName],
		--max(case when name='Id' then convert(Varchar(50),StringValue) else '' end) as [Id],
		--max(case when name='EmailAddress' then convert(Varchar(50),StringValue) else '' end) as [EmailAddress],
		--max(case when name='HasMobilePhone' then convert(Varchar(50),StringValue) else '' end) as [HasMobilePhone],
		--max(case when name='HasMobilePhone2' then convert(Varchar(50),StringValue) else '' end) as [HasMobilePhone2],
		--max(case when name='HasHomePhone' then convert(Varchar(50),StringValue) else '' end) as [HasHomePhone],
		--max(case when name='HasHomePhone2' then convert(Varchar(50),StringValue) else '' end) as [HasHomePhone2],
		--max(case when name='HasWorkPhone' then convert(Varchar(50),StringValue) else '' end) as [HasWorkPhone],
		--max(case when name='HasWorkPhone2' then convert(Varchar(50),StringValue) else '' end) as [HasWorkPhone2],
		--max(case when name='MobilePhone' then convert(Varchar(50),StringValue) else '' end) as [MobilePhone],
		--max(case when name='MobilePhone2' then convert(Varchar(50),StringValue) else '' end) as [MobilePhone2],
		--max(case when name='HomeNumber' then convert(Varchar(50),StringValue) else '' end) as [HomeNumber],
		--max(case when name='HomeNumber2' then convert(Varchar(50),StringValue) else '' end) as [HomeNumber2],
		--max(case when name='WorkNumber' then convert(Varchar(50),StringValue) else '' end) as [WorkNumber],
		--max(case when name='WorkNumber2' then convert(Varchar(50),StringValue) else '' end) as [WorkNumber2]
From parseJSON
(
       @JsonResultsValue
)
where (ValueType = 'string' OR ValueType = 'boolean')
group by parent_ID


	    