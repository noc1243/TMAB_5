SELECT Disciplina.Nm_Disciplina, Rel_Turma_Aluno.Nu_Nota FROM Disciplina
INNER JOIN Turma ON Disciplina.Cd_Disciplina = Turma.Cd_Disciplina
INNER JOIN Rel_Turma_Aluno ON Rel_Turma_Aluno.Cd_Turma = Turma.Cd_Turma
INNER JOIN Aluno ON Aluno.Cd_Aluno = Rel_Turma_Aluno.Cd_Aluno
WHERE Aluno.Cd_Aluno = 56
ORDER BY Turma.Nu_Ano, Turma.Nu_Semestre