/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Name] as имя
      ,[Surname] as фамилия
	  ,[email]
	  FROM Table_3 WHERE 
SELECT [Name] as имя
      ,[Surname] as фамилия
      ,[phone] as номер
  FROM Table_3 WHERE phone IS NOT NULL AND rating > 7 AND LEN(Name) >=3