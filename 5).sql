SELECT Disciplina.Nm_Disciplina, Turma.Nu_Turma FROM Disciplina
INNER JOIN Turma ON Turma.Cd_Disciplina = Disciplina.Cd_Disciplina
WHERE Turma.Nu_Semestre = 1 AND Turma.Nu_Ano = 2017