SELECT Disciplina.Nm_Disciplina FROM Curso
INNER JOIN Rel_Curso_Disciplina ON Curso.Cd_Curso = Rel_Curso_Disciplina.Cd_Curso
INNER JOIN Disciplina ON Disciplina.Cd_Disciplina = Rel_Curso_Disciplina.Cd_Disciplina
WHERE Disciplina.Nu_Creditos = 4 AND Curso.Nm_Curso = "Engenharia"
