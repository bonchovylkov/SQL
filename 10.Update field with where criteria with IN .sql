update Player
set fkClub = null

WHERE        (fkClub IN
                             (SELECT        Id
                               FROM            dbo.Club
                               WHERE        (GSMTeamId IS NOT NULL)))