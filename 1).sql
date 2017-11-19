SELECT Curso.Nm_Curso, SUM (Disciplina.Hh_Carga_Horaria) FROM Curso
INNER JOIN Rel_Curso_Disciplina ON Curso.Cd_Curso = Rel_Curso_Disciplina.Cd_Curso
INNER JOIN Disciplina ON Disciplina.Cd_Disciplina = Rel_Curso_Disciplina.Cd_Disciplina
GROUP BY Curso.Nm_Curso
