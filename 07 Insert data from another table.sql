insert into keyvalue (KeyValueIntCode, Name, CodeAdminUNI,idKeyType )
SELECT [University ID]
      ,[University Name],
	  [University ID],
	  (select idkeytype from KeyType where KeyTypeIntCode = 'CodeUniversity')
      
  FROM [UMS_ADMIN_UNI_DB_20140908].[dbo].[Code University]