DECLARE @Result AS TABLE
(
    Token VARCHAR(MAX)
)

DECLARE @Ids as varchar(MAX)
--SET @Ids = 'id=cfc4db24-bb64-e811-a95a-000d3a38c9f2&id=290fe5eb-ddfd-e811-a97a-000d3ab982f2&id=99654c01-d791-e811-a95c-000d3ab98555&id=05168895-d891-e811-a95c-000d3ab98555&id=e4f985cc-ac40-e911-a97f-000d3ab98582&id=318ab173-8296-e811-a95f-000d3ab98b50&id=981ae88e-c7b0-e711-810d-5065f38a5b01&id=ae26751e-2958-e811-8101-5065f38a5b31&id=7df377f2-3d58-e811-8101-5065f38a5b31&id=647a23d5-0f59-e811-8101-5065f38a5b31&id=74ad26c5-a7c3-e711-811c-5065f38ac931&id=d22b18e0-a7c3-e711-811c-5065f38ac931&id=733f1c87-b0c3-e711-811c-5065f38ac931&id=00901ae2-6153-e811-80ff-5065f38aca81&id=49a8a5b3-5c13-e711-810b-5065f38b0341&id=30c9786b-b133-e711-8105-5065f38b03b1&id=97450b34-6365-e711-8109-5065f38b05a1&id=2d02cd3c-6365-e711-8109-5065f38b05a1&id=464804bb-c671-e711-810f-5065f38b4651&id=d30e7aca-c671-e711-810f-5065f38b4651&id=70a77faa-c771-e711-810f-5065f38b4651&id=48183cc3-c771-e711-810f-5065f38b4651&id=58586ad2-c771-e711-810f-5065f38b4651&id=f9f713e0-c771-e711-810f-5065f38b4651&id=97f6acfd-c771-e711-810f-5065f38b4651&id=ded2a12f-c871-e711-810f-5065f38b4651&id=cc99523d-c871-e711-810f-5065f38b4651&id=c2e90152-c871-e711-810f-5065f38b4651&id=18f72de4-c871-e711-810f-5065f38b4651&id=d0f851ed-5277-e711-8110-5065f38b4651&id=692d1b1a-8426-e711-8104-5065f38b9561&id=f458d598-8426-e711-8104-5065f38b9561&id=2ca3cd9e-8426-e711-8104-5065f38b9561&id=4514cda4-8426-e711-8104-5065f38b9561&id=76c0c7aa-8426-e711-8104-5065f38b9561&id=970ac0b0-8426-e711-8104-5065f38b9561&id=2c0e9c5c-6544-e811-8120-5065f38bc331&id=1dd3337e-6544-e811-8120-5065f38bc331'
SET @Ids = 'id=cfc4db24-bb64-e811-a95a-000d3a38c9f2&id=290fe5eb-ddfd-e811-a97a-000d3ab982f2&id=99654c01-d791-e811-a95c-000d3ab98555'
--SET @Ids = 'id=05168895-d891-e811-a95c-000d3ab98555&id=e4f985cc-ac40-e911-a97f-000d3ab98582&id=318ab173-8296-e811-a95f-000d3ab98b50'
--SET @Ids = 'id=981ae88e-c7b0-e711-810d-5065f38a5b01&id=ae26751e-2958-e811-8101-5065f38a5b31&id=7df377f2-3d58-e811-8101-5065f38a5b31'
--SET @Ids = 'id=647a23d5-0f59-e811-8101-5065f38a5b31&id=74ad26c5-a7c3-e711-811c-5065f38ac931&id=d22b18e0-a7c3-e711-811c-5065f38ac931'
--SET @Ids = 'id=733f1c87-b0c3-e711-811c-5065f38ac931&id=00901ae2-6153-e811-80ff-5065f38aca81&id=49a8a5b3-5c13-e711-810b-5065f38b0341'
--SET @Ids = 'id=30c9786b-b133-e711-8105-5065f38b03b1&id=97450b34-6365-e711-8109-5065f38b05a1&id=2d02cd3c-6365-e711-8109-5065f38b05a1'
--SET @Ids = 'id=464804bb-c671-e711-810f-5065f38b4651&id=d30e7aca-c671-e711-810f-5065f38b4651&id=70a77faa-c771-e711-810f-5065f38b4651'
--SET @Ids = 'id=48183cc3-c771-e711-810f-5065f38b4651&id=58586ad2-c771-e711-810f-5065f38b4651&id=f9f713e0-c771-e711-810f-5065f38b4651'
--SET @Ids = 'id=97f6acfd-c771-e711-810f-5065f38b4651&id=ded2a12f-c871-e711-810f-5065f38b4651&id=cc99523d-c871-e711-810f-5065f38b4651'
--SET @Ids = 'id=c2e90152-c871-e711-810f-5065f38b4651&id=18f72de4-c871-e711-810f-5065f38b4651&id=d0f851ed-5277-e711-8110-5065f38b4651'
--SET @Ids = 'id=692d1b1a-8426-e711-8104-5065f38b9561&id=f458d598-8426-e711-8104-5065f38b9561&id=2ca3cd9e-8426-e711-8104-5065f38b9561'
--SET @Ids = 'id=4514cda4-8426-e711-8104-5065f38b9561&id=76c0c7aa-8426-e711-8104-5065f38b9561&id=970ac0b0-8426-e711-8104-5065f38b9561'
--SET @Ids = 'id=2c0e9c5c-6544-e811-8120-5065f38bc331&id=1dd3337e-6544-e811-8120-5065f38bc331'


DECLARE @Token AS VARCHAR(MAX)

DECLARE @BaseUrl AS VARCHAR(MAX)
--SET @BaseUrl = 'http://localhost:8000/' -- Local
--SET @BaseUrl = 'https://wealthdev.sasfin.com:443/WealthAPI/' -- UAT
SET @BaseUrl = 'https://services.sipp.co.za:443/' --prod


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

SELECT * FROM @Result  

SET @Token = REPLACE((SELECT * FROM @Result),'"','')

DECLARE @JsonResults AS TABLE
(
	Context nvarchar(max)
)

INSERT INTO @JsonResults    
EXEC [dbo].[APICaller_GETAuth] @FullRequestUrl, @Token

DECLARE @JsonResultsValue AS NVARCHAR(MAX)
SET @JsonResultsValue = REPLACE((SELECT * FROM @JsonResults),'''','''''')

SELECT * FROM @JsonResults

INSERT INTO [dbo].[Individual]
SELECT * FROM
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
