SELECT COUNT(Aluno.Cd_Aluno) FROM Aluno
INNER JOIN Rel_Turma_Aluno ON Aluno.Cd_Aluno = Rel_Turma_Aluno.Cd_Aluno
INNER JOIN Turma ON Turma.Cd_Turma = Rel_Turma_Aluno.Cd_Turma
WHERE Turma.Nu_Ano = 2017 AND Turma.Nu_Semestre = 2
GROUP BY Turma.Cd_Turma