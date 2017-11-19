SELECT `Local`.Nm_Local, Turma.Hh_Horario, Pessoa.Nm_Pessoa FROM Turma
INNER JOIN `Local` ON Turma.Cd_Local = `Local`.Cd_Local
INNER JOIN Professor ON Turma.Cd_Professor = Professor.Cd_Professor
INNER JOIN Pessoa ON Professor.Cd_Pessoa = Pessoa.Cd_Pessoa
WHERE Turma.Cd_Turma = 34