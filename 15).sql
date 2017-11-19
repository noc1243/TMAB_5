SELECT Disciplina.Nm_Disciplina FROM Disciplina
INNER JOIN Turma ON Turma.Cd_Disciplina = Disciplina.Cd_Disciplina
WHERE NOT(Disciplina.Cd_Disciplina IN (
                                  SELECT Disciplina.Cd_Disciplina FROM Disciplina
                                   INNER JOIN Turma ON Turma.Cd_Disciplina = Disciplina.Cd_Disciplina
                                   WHERE Turma.Nu_Ano=2016 AND Turma.Nu_Semestre=1
                                 ))
AND Turma.Nu_Ano=2017 AND Turma.Nu_Semestre=2