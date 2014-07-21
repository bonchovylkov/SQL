Delete from Curriculum where idCurriculum in 
(SELECT     Curriculum.idCurriculum
FROM         Curriculum LEFT OUTER JOIN
                      CurriculumDetails ON Curriculum.idCurriculum = CurriculumDetails.idCurriculum
WHERE     (CurriculumDetails.idCurriculum IS NULL))