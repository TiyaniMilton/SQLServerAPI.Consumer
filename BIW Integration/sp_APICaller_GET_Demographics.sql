-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

CREATE PROCEDURE [dbo].[APICaller_GET_Demographics]
@ClientId NVARCHAR (MAX) NULL
,@ClientSecret NVARCHAR (MAX) NULL
,@Region
--AS EXTERNAL NAME [API_Consumer].[StoredProcedures].[APICaller_GET_Auth]

--CREATE PROCEDURE <Procedure_Name, sysname, ProcedureName> 
--	-- Add the parameters for the stored procedure here
--	<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
--	<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

DECLARE @Result AS TABLE(Token VARCHAR(MAX))
DECLARE @JsonResults AS TABLE (Context varchar(max))

DECLARE @Token AS VARCHAR(MAX)
DECLARE @RequestUrl AS VARCHAR(MAX)

DECLARE @BaseUrl AS VARCHAR(MAX)
SET @BaseUrl = 'https://wealthdev.sasfin.com:443/WealthAPI/' 

DECLARE @AuthUrl AS VARCHAR(MAX)
SET @AuthUrl = @BaseUrl + 'api/Authenticate'

DECLARE @AuthJsonBody AS VARCHAR(MAX)
SET @AuthJsonBody = '{"ClientId": "'+@ClientId+'","ClientSecret": "'+@ClientSecret+'"}'
    
INSERT INTO @Result    
    exec  [dbo].[APICaller_POST]
    	@URL = @AuthUrl
    ,@JsonBody = @AuthJsonBody 

SET @Token = REPLACE((SELECT * FROM @Result),'"','')

--DECLARE @JsonResults AS TABLE (Context varchar(max))

INSERT INTO @JsonResults    
EXEC [dbo].[APICaller_GETAuth] 'https://wealthdev.sasfin.com:443/WealthAPI/ReferenceData/DocumentCategory', @Token

DECLARE @JsonResultsValue AS NVARCHAR(MAX)
SET @JsonResultsValue = (SELECT * FROM @JsonResults)

SELECT [Id]
      ,[MainTitle]
      ,[FullName]
      ,[RegionId]
      ,[RegionName]
      ,[GenderCode]
      ,[Gender]
      ,[IdentityNumber]
      ,[MaritalStatusCode]
      ,[MaritalStatus]
      ,[DateOfBirth]
      ,[Minor]
      ,[NationalityId]
      ,[NationalityName]
      ,[CitizenshipId]
      ,[CitizenshipName]
      ,[PassportNumber]
      ,[PassportExpiryDate]
      ,[PostalAddressLine1]
      ,[PostalAddressLine2]
      ,[PostalAddressLine3]
      ,[PostalAddressLine4]
      ,[PostalAddressSuburb]
      ,[PostalAddressCity]
      ,[PostalAddressCountryId]
      ,[PostalAddressCountryName]
      ,[PostalAddressPostalCode]

      FROM
	  OPENJSON(@JsonResultsValue)
  WITH ([Id] INT '$.Id', [Name] VARCHAR(80) '$.Name')

END
GO
