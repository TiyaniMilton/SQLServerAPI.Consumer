--USE TestDB
--GO
--sp_configure 'clr enabled',1
--RECONFIGURE

--ALTER DATABASE TESTDB SET TRUSTWORTHY ON

--CREATE ASSEMBLY [System.Runtime.Serialization]
--AUTHORIZATION	dbo
--FROM  N'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Runtime.Serialization.dll'
--WITH PERMISSION_SET = UNSAFE--external_access

--CREATE ASSEMBLY [Newtonsoft.Json]
--AUTHORIZATION dbo
----FROM  N'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\Newtonsoft.Json.dll'
--FROM N'C:\tfs\Wealth Digital\PROD\Sasfin.Wealth.DevOps\Sasfin.SQLServerAPI.Consumer\bin\Debug\Newtonsoft.Json.dll'
--WITH PERMISSION_SET = UNSAFE

--CREATE ASSEMBLY [System.Net]
--AUTHORIZATION	dbo
--FROM  N'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Net.dll'
--WITH PERMISSION_SET = UNSAFE--external_access

--CREATE ASSEMBLY [System.Net.Http]
--AUTHORIZATION	dbo
--FROM  N'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Net.Http.dll'
--WITH PERMISSION_SET = UNSAFE--external_access

--CREATE ASSEMBLY [System.IdentityModel]
--AUTHORIZATION	dbo
--FROM  N'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.IdentityModel.dll'
--WITH PERMISSION_SET = UNSAFE--external_access

--CREATE ASSEMBLY [System.ComponentModel.DataAnnotations]
--AUTHORIZATION	dbo
--FROM  N'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.ComponentModel.DataAnnotations.dll'
--WITH PERMISSION_SET = UNSAFE--external_access

--CREATE ASSEMBLY [System.Data]
--AUTHORIZATION	dbo
--FROM  N'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Data.dll'
--WITH PERMISSION_SET = UNSAFE--external_access

--CREATE ASSEMBLY [System.Data.DataSetExtensions]
--AUTHORIZATION	dbo
--FROM  N'C:\Windows\Microsoft.NET\Framework64\v4.0.30319\System.Data.DataSetExtensions.dll'
--WITH PERMISSION_SET = UNSAFE--external_access

--CREATE ASSEMBLY [API_Consumer]
--AUTHORIZATION dbo
--FROM  N'C:\tfs\Wealth Digital\PROD\Sasfin.Wealth.DevOps\Sasfin.SQLServerAPI.Consumer\bin\Debug\Sasfin.SQLServerAPI.Consumer.dll'
--WITH PERMISSION_SET = UNSAFE

--PRINT N'Creating [dbo].[APICaller_GET]...';
--GO
--CREATE PROCEDURE [dbo].[APICaller_GET]
--@URL NVARCHAR (MAX) NULL
--AS EXTERNAL NAME [API_Consumer].[StoredProcedures].[APICaller_GET]
--PRINT N'Creating [dbo].[APICaller_POST]...';
--GO
--CREATE PROCEDURE [dbo].[APICaller_POST]
--@URL NVARCHAR (MAX) NULL
--,@JsonBody	NVARCHAR (MAX) NULL
--AS EXTERNAL NAME [API_Consumer].[StoredProcedures].[APICaller_POST]
--PRINT N'Creating [dbo].[APICaller_POSTAuth]...';
--GO
--CREATE PROCEDURE [dbo].[APICaller_POSTAuth]
--@URL NVARCHAR (MAX) NULL
--,@Token NVARCHAR (MAX) NULL
--,@JsonBody	NVARCHAR (MAX) NULL
--AS EXTERNAL NAME [API_Consumer].[StoredProcedures].[APICaller_POST_Auth]
--PRINT N'Creating [dbo].[APICaller_GETAuth]...';
--GO
--CREATE PROCEDURE [dbo].[APICaller_GETAuth]
--@URL NVARCHAR (MAX) NULL
--,@Token NVARCHAR (MAX) NULL
--AS EXTERNAL NAME [API_Consumer].[StoredProcedures].[APICaller_GET_Auth]

--ALTER PROCEDURE [dbo].[APICaller_GETAuth]
--@URL NVARCHAR (MAX) NULL
--,@Token NVARCHAR (MAX) NULL
--AS EXTERNAL NAME [API_Consumer].[StoredProcedures].[APICaller_GET_Auth]