/****** Script for SelectTopNRows command from SSMS  ******/
SELECT distinct
      [idUser]
  
      ,[EventAction]
    
      ,[EntityName]

  FROM [ums].[dbo].[EventLog] where idUser =-1 OR EntityName = 'UMSModel.Models.StreamGroupDetail'
  --