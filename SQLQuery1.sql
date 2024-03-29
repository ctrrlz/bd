/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [id]
      ,[LastName]
      ,[FirstName]
      ,[Height]
      ,[Number]
      ,[Position]
      ,[Date]
      ,[Phone]
  FROM [lelik1].[dbo].[Voleyball] ORDER BY LastName ASC

SELECT [FirstName]
  ,[LastName]
  ,[Number]
   FROM [lelik1].[dbo].[Voleyball] WHERE Height>180
SELECT [FirstName]
  ,[Number]
  ,[Position]
   FROM [lelik1].[dbo].[Voleyball] WHERE Phone IS NULL
SELECT [LastName]
  ,[Number]
   FROM [lelik1].[dbo].[Voleyball] WHERE id>3 AND Height<190
SELECT [FirstName]
  ,[LastName]
  ,[Phone]
   FROM [lelik1].[dbo].[Voleyball]  ORDER BY LastName DESC
SELECT [FirstName] as фамилия
  ,[LastName] as имя
   FROM [lelik1].[dbo].[Voleyball]  WHERE YEAR(Date)>2005