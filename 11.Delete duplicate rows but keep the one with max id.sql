DELETE FROM [dbo].[BusinessTeam]
WHERE  ID NOT IN (SELECT MAX(ID)
                  FROM   [BusinessTeam]
                  GROUP  BY fkClub,
                            fkBusinessClient
                  /*Even if ID is not null-able SQL Server treats MAX(ID) as potentially
                    nullable. Because of semantics of NOT IN (NULL) including the clause
                    below can simplify the plan*/
                  HAVING MAX(ID) IS NOT NULL) 