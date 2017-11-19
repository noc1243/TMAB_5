SELECT Pessoa.Nm_Pessoa FROM Pessoa
INNER JOIN Aluno ON Pessoa.Cd_Pessoa = Aluno.Cd_Pessoa
WHERE Pessoa.Nu_Idade = ( SELECT MAX(Pessoa.Nu_Idade) FROM Pessoa
                         INNER JOIN Aluno ON Pessoa.Cd_Pessoa = Aluno.Cd_Pessoa) 