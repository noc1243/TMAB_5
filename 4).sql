SELECT Disciplina.Nm_Disciplina FROM Disciplina
INNER JOIN Rel_Curso_Disciplina ON Disciplina.Cd_Disciplina = Rel_Curso_Disciplina.Cd_Disciplina
INNER JOIN Curso ON Curso.Cd_Curso = Rel_Curso_Disciplina.Cd_Curso
WHERE Curso.Nm_Curso = "Engenharia" AND Rel_Curso_Disciplina.Nu_Periodo = 3