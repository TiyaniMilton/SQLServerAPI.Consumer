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

SELECT * FROM @JsonResults

SELECT * 
INTO [dbo].[Individual]
      FROM
		OPENJSON
			(
					@JsonResultsValue
			)
		 WITH 
			(
				[Id] UNIQUEIDENTIFIER '$.Id'
				,[IdNumber] VARCHAR(80) '$.IdNumber'
				,[Initials] VARCHAR(80) '$.Initials'
				,[Firstname] VARCHAR(80) '$.Firstname'
				,[Surname] VARCHAR(80) '$.Surname'
				,[PreferedName] VARCHAR(80) '$.Preferedame'
				,[Title] VARCHAR(80) '$.Title'
				,[EmailAddress] VARCHAR(80) '$.EmailAddress'
				,[MobilePhone] VARCHAR(80) '$.MobilePhone'
				,[BirthDate] Datetime '$.BirthDate'
				,[HomeNumber] VARCHAR(80) '$.HomeNumber'
				,[WorkNumber] VARCHAR(80) '$.WorkNumber'
				,[PhysicalAddressLine1] VARCHAR(100) '$.PhysicalAddress.Line1'
				,[PhysicalAddressLine2] VARCHAR(100) '$.PhysicalAddress.Line2'
				,[PhysicalAddressLine3] VARCHAR(100) '$.PhysicalAddress.Line3'
				,[PhysicalAddressLine4] VARCHAR(100) '$.PhysicalAddress.Line4'
				,[PhysicalAddressCity] VARCHAR(100) '$.PhysicalAddress.City'
				,[PhysicalAddressProvince] VARCHAR(100) '$.PhysicalAddress.Province'
				,[PhysicalAddressSuburb] VARCHAR(100) '$.PhysicalAddress.Suburb'
				,[PhysicalAddressCountryId] VARCHAR(100) '$.PhysicalAddress.Country.Id'
				,[PhysicalAddressCountryName] VARCHAR(100) '$.PhysicalAddress.Country.Name'
				,[PhysicalAddressPostalCode] VARCHAR(100) '$.PhysicalAddress.PostalCode'

				,[PostalAddressLine1] VARCHAR(100) '$.PostalAddress.Line1'
				,[PostalAddressLine2] VARCHAR(100) '$.PostalAddress.Line2'
				,[PostalAddressLine3] VARCHAR(100) '$.PostalAddress.Line3'
				,[PostalAddressLine4] VARCHAR(100) '$.PostalAddress.Line4'
				,[PostalAddressCity] VARCHAR(100) '$.PostalAddress.City'
				,[PostalAddressProvince] VARCHAR(100) '$.PostalAddress.Province'
				,[PostalAddressSuburb] VARCHAR(100) '$.PostalAddress.Suburb'
				,[PostalAddressCountryId] VARCHAR(100) '$.PostalAddress.Country.Id'
				,[PostalAddressCountryName] VARCHAR(100) '$.PostalAddress.Country.Name'
				,[PostalAddressPostalCode] VARCHAR(100) '$.PostalAddress.PostalCode'

				,[CRMNumber] FLOAT '$.CRMNumber'
				,[IFA] UNIQUEIDENTIFIER '$.IFA'
				,[RelationshipManager] UNIQUEIDENTIFIER '$.RelationshipManager'
				,[RelationshipManagerName] VARCHAR(80) '$.RelationshipManagerName'
				,[InvestmanetManager] UNIQUEIDENTIFIER '$.InvestmanetManager'
				,[InvestmanetManagerName] VARCHAR(80) '$.InvestmanetManagerName'
				,[CleintType] INT '$.CleintType'
				,[Status] INT '$.Status'
				,[StatusName] VARCHAR(80) '$.StatusName'
				,[CitizenshipId] UNIQUEIDENTIFIER '$.CitizenshipId'
				,[Citizenship] VARCHAR(80) '$.Citizenship'
				,[CityOfBirth] VARCHAR(80) '$.CityOfBirth'
				,[CountryOfBirth] VARCHAR(80) '$.CountryOfBirth'
				,[SARTaxNumber] VARCHAR(80) '$.SARTaxNumber'
				,[Gender] VARCHAR(80) '$.Gender'
				,[GenderName] VARCHAR(80) '$.GenderName'
				,[OnboardingStatus] INT '$.OnboardingStatus'
				,[OnboardingStatusName] VARCHAR(80) '$.OnboardingStatusName'
				,[EmployeeNumber] VARCHAR(80) '$.EmployeeNumber'
				,[EmployerNumber] VARCHAR(80) '$.EmployerNumber'
				,[CountryOfBirthId] UNIQUEIDENTIFIER '$.CountryOfBirthId'
				,[Region] UNIQUEIDENTIFIER '$.Region'
				,[RegionName] VARCHAR(80) '$.RegionName'
				,[SarsTaxNumber] VARCHAR(80) '$.SarsTaxNumber'
				,[NationalityId] UNIQUEIDENTIFIER '$.NationalityId'
				,[NationalityName] VARCHAR(80) '$.NationalityName'
				,[WealthClient] BIT '$.WealthClient'
				,[HealthClient] BIT '$.HealthClient'
				,[SecuritiesClient] BIT '$.SecuritiesClient'
				,[AccountHolder] BIT '$.AccountHolder'
				,[Member] BIT '$.Member'
				,[IsIFA] BIT '$.IsIFA'
				,[PassportNumber] VARCHAR(80) '$.PassportNumber'
				,[MaritalStatus] INT '$.MaritalStatus'
				,[MaritalStatusName] VARCHAR(80) '$.MaritalStatusName'
				,[CountryOfResidence] UNIQUEIDENTIFIER '$.CountryOfResidence'
				,[CountryOfResidenceName] VARCHAR(80) '$.CountryOfResidenceName'
				,[SAResident] BIT '$.SAResident'
				,[SourceOfIncome] VARCHAR(80) '$.SourceOfIncome'
				,[SourceOfFunds] VARCHAR(80) '$.SourceOfFunds'
				,[IFAName] VARCHAR(80) '$.IFAName'
				,[IFAPhoneHome] VARCHAR(80) '$.IFAPhoneHome'
				,[IFAPhonePersonal] VARCHAR(100) '$.IFAPhonePersonal'
				,[IFAEmail] VARCHAR(100) '$.IFAEmail'
				,[RelationshipManagerPhoneHome] VARCHAR(100) '$.RelationshipManagerPhoneHome'
				,[RelationshipManagerPhonePersonal] VARCHAR(100) '$.RelationshipManagerPhonePersonal'
				,[RelationshipManagerEmail] VARCHAR(100) '$.RelationshipManagerEmail'
				,[OwnerName] VARCHAR(100) '$.OwnerName'
				,[OwnerId] UNIQUEIDENTIFIER '$.OwnerId'
				,[AssetManager] NVARCHAR(MAX) '$.AssetManager'
				,[AssetManagerName] NVARCHAR(MAX) '$.AssetManagerName'
				,[FICACompletedAndReviewed] VARCHAR(100) '$.FICACompletedAndReviewed'
				,[FICAStatus] VARCHAR(100) '$.FICAStatus'
				,[FICAStatusId] UNIQUEIDENTIFIER '$.FICAStatusId'
				,[FICAStatusReason] INT '$.FICAStatusReason'
				,[FICAStatusReasonName] VARCHAR(100) '$.FICAStatusReasonName'
				,[NextFicaReviewDate] DATETIME '$.NextFicaReviewDate'
				,[LastFicaReviewDate] DATETIME '$.LastFicaReviewDate'
				,[IsFICAValid] BIT '$.IsFICAValid'
				,[CPAMarketingMaterial] BIT '$.CPAMarketingMaterial'
				,[CPAMarketingDistribution] INT '$.CPAMarketingDistribution'
				,[CPAMarketingDistributionName] VARCHAR(100) '$.CPAMarketingDistributionName'
			)


--CREATE TYPE t_IdArray  AS TABLE
--(
--Id INT
--);