SELECT Disciplina.Nm_Disciplina, Turma.Nu_Turma FROM Disciplina
INNER JOIN Turma ON Turma.Cd_Disciplina = Disciplina.Cd_Disciplina
INNER JOIN Rel_Curso_Disciplina ON Disciplina.Cd_Disciplina = Rel_Curso_Disciplina.Cd_Disciplina
INNER JOIN Curso ON Curso.Cd_Curso = Rel_Curso_Disciplina.Cd_Curso
INNER JOIN Aluno ON Aluno.Cd_Curso = Curso.Cd_Curso
WHERE Turma.Nu_Semestre = 1 AND Turma.Nu_Ano = 2017 AND Aluno.Cd_Aluno = 53
AND Rel_Curso_Disciplina.Nu_Periodo = 8