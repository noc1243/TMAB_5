SELECT COUNT(DISTINCT Aluno.Cd_Aluno) FROM Aluno
INNER JOIN Rel_Turma_Aluno ON Rel_Turma_Aluno.Cd_Aluno = Aluno.Cd_Aluno
INNER JOIN Turma ON Turma.Cd_Turma = Rel_Turma_Aluno.Cd_Turma
INNER JOIN Professor ON Professor.Cd_Professor = Turma.Cd_Professor
WHERE Aluno.Cd_Aluno IN (
                        SELECT Aluno.Cd_Aluno FROM Aluno
                         INNER JOIN Rel_Turma_Aluno ON Rel_Turma_Aluno.Cd_Aluno = Aluno.Cd_Aluno
                         INNER JOIN Turma ON Turma.Cd_Turma = Rel_Turma_Aluno.Cd_Turma
                         INNER JOIN Professor ON Professor.Cd_Professor = Turma.Cd_Professor
                         WHERE Professor.Cd_Professor = 57 AND Turma.Nu_Ano = 2017 AND Turma.Nu_Semestre= 2
                        )
AND Professor.Cd_Professor = 56 AND Turma.Nu_Ano = 2017 AND Turma.Nu_Semestre= 2