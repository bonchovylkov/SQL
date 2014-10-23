INSERT INTO [DisciplineName]
           ([DisciplineName]
           ,[DisciplineCode]
           ,[DisciplineNameAbbreviation])
     VALUES
           ('IV-ва избираема'
           ,'FourthSelectableDiscipline'
           ,'Четв. изб.')
GO


DECLARE @idOKC int;
select @idOKC  =   [KeyValue].idKeyValue From KeyValue where [KeyValue].KeyValueIntCode = 'doctor'

DECLARE @idDisciplineGeneral int;
select @idDisciplineGeneral  =   [KeyValue].idKeyValue From KeyValue where [KeyValue].KeyValueIntCode = 'educationGenerally'

INSERT INTO [DisciplineNameByTypeOKC]
           ([idOKC]           
           ,[idDisciplineGeneral]           
           ,[idDisciplineName])
SELECT @idOKC,@idDisciplineGeneral,idDisciplineName
FROM DisciplineName
WHERE DisciplineCode = 'FourthSelectableDiscipline';