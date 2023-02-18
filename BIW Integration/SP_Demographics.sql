SELECT  [Id]
	,[IdNumber]
	,[Initials]
	,[Firstname]
	,[Surname]
	,[PreferedName]
	,[BirthDate]
	,[Title]
	,[EmailAddress]
	,[MobilePhone]
	,[HomeNumber]
	,[Worknumber]
	,[PostalAddressLine1]
	,[PostalAddressLine2]
	,[PostalAddressLine3]
	,[PostalAddressLine4]
	,[PostalAddressCity]
	,[PostalAddressProvince]
	,[PostalAddressSuburb]
	,[PostalAddressCountryId]
	,[PostalAddressCountryName]
	,[PostalAddressPostalCode]
	,[PhysicalAddressLine1]
	,[PhysicalAddressLine2]
	,[PhysicalAddressLine3]
	,[PhysicalAddressLine4]
	,[PhysicalAddressCity]
	,[PhysicalAddressProvince]
	,[PhysicalAddressSuburb]
	,[PhysicalAddressCountryId]
	,[PhysicalAddressCountryName]
	,[PhysicalAddressPostalCode]
	,[CRMNumber]
	,[IFA]
	,[RelationshipManager]
	,[RelationshipManagerName]
	,[InvestmanetManager]
	,[InvestmanetManagerName]
	,[CleintType]
	,[Status]
	,[StatusName]
	,[CitizenshipId]
	,[Citizenship]
	,[CityOfBirth]
	,[CountryOfBirth]
	,[SARTaxNumber]
	,[Gender]
	,[GenderName]
	,[OnboardingStatus]
	,[OnboardingStatusName]
	,[EmployeeNumber]
	,[EmployerNumber]
	,[CountryOfBirthId]
	,[Region]
	,[RegionName]
	,[SarsTaxNumber]
	,[NationalityId]
	,[NationalityName]
	,[WealthClient]
	,[HealthClient]
	,[SecuritiesClient]
	,[AccountHolder]
	,[Member]
	,[IsIFA]
	,[PassportNumber]
	,[MaritalStatus]
	,[MaritalStatusName]
	,[CountryOfResidence]
	,[CountryOfResidenceName]
	,[SAResident]
	,[SourceOfIncome]
	,[SourceOfFunds]
	,[IFAName]
	,[IFAPhoneHome]
    ,[IFAPhonePersonal]
    ,[IFAEmail]
    ,[RelationshipManagerPhoneHome]
    ,[RelationshipManagerPhonePersonal]
    ,[RelationshipManagerEmail]
    ,[OwnerName]
    ,[OwnerId]
    ,[AssetManager]
    ,[AssetManagerName]
    ,[FICACompletedAndReviewed]
    ,[FICAStatus]
    ,[FICAStatusId]
    ,[FICAStatusReason]
    ,[FICAStatusReasonName]
    ,[NextFicaReviewDate]
    ,[LastFicaReviewDate]
    ,[IsFICAValid]
    ,[CPAMarketingMaterial]
    ,[CPAMarketingDistribution]
    ,[CPAMarketingDistributionName]
      FROM
	  OPENJSON(
	  '[
  {
    "IdNumber": "8312125342089",
    "BirthDate": "1983-12-12T00:00:00",
    "Title": "Mr",
    "TitleId": "4c506b53-922e-e711-8106-5065f38b95f1",
    "Initials": "T",
    "Firstname": "Trevor",
    "PreferedName": null,
    "Surname": "Noah",
    "FullName": "Trevor Noah",
    "Id": "e0d70f5a-8557-e811-a95f-000d3a2065c5",
    "EmailAddress": "trevor@noah.co.za",
    "HasMobilePhone": true,
    "HasMobilePhone2": null,
    "HasHomePhone": null,
    "HasHomePhone2": null,
    "HasWorkPhone": null,
    "HasWorkPhone2": null,
    "MobilePhone": "0825502222",
    "MobilePhone2": null,
    "HomeNumber": null,
    "HomeNumber2": null,
    "WorkNumber": null,
    "WorkNumber2": null,
    "PhysicalAddress": {
      "Line1": "",
      "Line2": "",
      "Line3": "",
      "Line4": "Scott Street",
      "Suburb": "Waverley",
      "Country": {
        "Id": "7cd5e23b-062f-e711-810b-5065f38be521",
        "Name": "South Africa",
        "Code1": null,
        "Status": 0,
        "StatusName": null,
        "Code2": null,
        "JSEName": null,
        "InternationalCode": null,
        "OwnerName": null,
        "OwnerId": null
      },
      "PostalCode": "2191",
      "City": "Johannesburg",
      "Province": ""
    },
    "PostalAddress": {
      "Line1": "Scott Street",
      "Line2": "",
      "Line3": "",
      "Line4": null,
      "Suburb": "Waverley",
      "Country": {
        "Id": "7cd5e23b-062f-e711-810b-5065f38be521",
        "Name": "South Africa",
        "Code1": null,
        "Status": 0,
        "StatusName": null,
        "Code2": null,
        "JSEName": null,
        "InternationalCode": null,
        "OwnerName": null,
        "OwnerId": null
      },
      "PostalCode": "2191",
      "City": "Johannesburg",
      "Province": ""
    },
    "AccountNumber": null,
    "XPlanNumber": null,
    "CRMNumber": "132342",
    "IFA": null,
    "RelationshipManager": "dd60ff49-f6a4-e711-8113-5065f38a6ad1",
    "RelationshipManagerName": "Duncan Studer",
    "InvestmanetManager": "dd60ff49-f6a4-e711-8113-5065f38a6ad1",
    "InvestmanetManagerName": "Duncan Studer",
    "CleintType": 0,
    "Status": 0,
    "StatusName": "Active",
    "CitizenshipId": "7cd5e23b-062f-e711-810b-5065f38be521",
    "Citizenship": "South Africa",
    "CityOfBirth": null,
    "CountryOfBirth": null,
    "SARTaxNumber": "25001455",
    "Gender": 1,
    "GenderName": "Male",
    "OnboardingStatus": 1,
    "OnboardingStatusName": "In Progress",
    "EmployeeNumber": null,
    "EmployerNumber": null,
    "CountryOfBirthId": null,
    "Region": "ef58d598-8426-e711-8104-5065f38b9561",
    "RegionName": "Pretoria",
    "SarsTaxNumber": "25001455",
    "NationalityId": null,
    "NationalityName": null,
    "WealthClient": false,
    "HealthClient": false,
    "SecuritiesClient": true,
    "AccountHolder": null,
    "Member": false,
    "IsIFA": false,
    "PassportNumber": null,
    "MaritalStatus": 5,
    "MaritalStatusName": "Single",
    "CountryOfResidence": "7cd5e23b-062f-e711-810b-5065f38be521",
    "CountryOfResidenceName": "South Africa",
    "SAResident": true,
    "SourceOfIncome": "Salary",
    "SourceOfFunds": "Salary",
    "IFAName": null,
    "IFAPhoneHome": null,
    "IFAPhonePersonal": null,
    "IFAEmail": null,
    "RelationshipManagerPhoneHome": null,
    "RelationshipManagerPhonePersonal": null,
    "RelationshipManagerEmail": null,
    "OwnerName": null,
    "OwnerId": null,
    "AssetManager": null,
    "AssetManagerName": null,
    "FICACompletedAndReviewed": false,
    "FICAStatus": "KYC Complete",
    "FICAStatusId": "00736f64-8557-e811-a962-000d3a276620",
    "FICAStatusReason": null,
    "FICAStatusReasonName": null,
    "NextFicaReviewDate": null,
    "LastFicaReviewDate": null,
    "IsFICAValid": null,
    "CPAMarketingMaterial": false,
    "CPAMarketingDistribution": null,
    "CPAMarketingDistributionName": null
  }]'
	  )
  WITH (
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
		,[CityOfBirth] Datetime '$.CityOfBirth'
		,[CountryOfBirth] VARCHAR(80) '$.CountryOfBirth'
		,[SARTaxNumber] VARCHAR(80) '$.SARTaxNumber'
		,[Gender] VARCHAR(80) '$.Gender'
		,[GenderName] VARCHAR(80) '$.GenderName'
		,[OnboardingStatus] VARCHAR(80) '$.OnboardingStatus'
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
		,[AccountHolder] VARCHAR(80) '$.AccountHolder'
		,[Member] BIT '$.Member'
		,[IsIFA] BIT '$.IsIFA'
		,[PassportNumber] VARCHAR(80) '$.PassportNumber'
		,[MaritalStatus] INT '$.MaritalStatus'
		,[MaritalStatusName] VARCHAR(80) '$.MaritalStatusName'
		,[CountryOfResidence] UNIQUEIDENTIFIER '$.CountryOfResidence'
		,[CountryOfResidenceName] VARCHAR(80) '$.CountryOfResidenceName'
		,[SAResident] VARCHAR(80) '$.SAResident'
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
		,[AssetManager] UNIQUEIDENTIFIER '$.AssetManager'
		,[AssetManagerName] VARCHAR(100) '$.AssetManagerName'
		,[FICACompletedAndReviewed] VARCHAR(100) '$.FICACompletedAndReviewed'
		,[FICAStatus] VARCHAR(100) '$.FICAStatus'
		,[FICAStatusId] UNIQUEIDENTIFIER '$.FICAStatusId'
		,[FICAStatusReason] INT '$.FICAStatusReason'
		,[FICAStatusReasonName] VARCHAR(100) '$.FICAStatusReasonName'
		,[NextFicaReviewDate] DATETIME '$.NextFicaReviewDate'
		,[LastFicaReviewDate] DATETIME '$.LastFicaReviewDate'
		,[IsFICAValid] BIT '$.IsFICAValid'
		,[CPAMarketingMaterial] BIT '$.CPAMarketingMaterial'
		,[CPAMarketingDistribution] UNIQUEIDENTIFIER '$.CPAMarketingDistribution'
		,[CPAMarketingDistributionName] VARCHAR(100) '$.CPAMarketingDistributionName'
		)