insert into [SportClassifier].[dbo].[Sources] (Name, StreamUrl, LastUpdated,IsActive,Category_Id,SourceWebsiteId)
SELECT Name
      ,StreamUrl,
	  LastUpdated,
	  IsActive,
	  (select Id from Categories where Id = fkCategory),
	  fkWebsite
	  
      
  FROM [sportnetFull].[dbo].[Source]