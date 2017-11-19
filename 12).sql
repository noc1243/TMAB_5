SELECT Disciplina.Nm_Disciplina  FROM Disciplina
INNER JOIN Rel_Curso_Disciplina ON Disciplina.Cd_Disciplina = Rel_Curso_Disciplina.Cd_Disciplina
INNER JOIN Curso ON Curso.Cd_Curso = Rel_Curso_Disciplina.Cd_Curso
WHERE Curso.Cd_Curso = 10
ORDER BY Rel_Curso_Disciplina.Nu_Periodo