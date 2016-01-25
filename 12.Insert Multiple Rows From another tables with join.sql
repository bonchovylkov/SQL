INSERT INTO [dbo].[BusinessTeam] (fkClub,fkBusinessClient)
SELECT p.fkClub, b.fkBusinessClient
FROM Player p
INNER JOIN [dbo].[BusinessClientPlayer] b ON b.fkPlayer = p.fkProfile
where p.fkClub is not Null