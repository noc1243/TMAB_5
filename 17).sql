SELECT AVG(Rel_Turma_Aluno.Nu_Nota) FROM Rel_Turma_Aluno
INNER JOIN Turma ON Turma.Cd_Turma = Rel_Turma_Aluno.Cd_Turma
GROUP BY Turma.Cd_Turma, Turma.Nu_Ano, Turma.Nu_Semestre