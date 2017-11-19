SELECT Pessoa.Nm_Pessoa FROM Pessoa
INNER JOIN Aluno ON Pessoa.Cd_Pessoa = Aluno.Cd_Pessoa
INNER JOIN Rel_Turma_Aluno ON Aluno.Cd_Aluno = Rel_Turma_Aluno.Cd_Aluno
INNER JOIN Turma ON Turma.Cd_Turma = Rel_Turma_Aluno.Cd_Turma
WHERE Turma.Cd_Turma = 5