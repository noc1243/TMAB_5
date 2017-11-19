SELECT SUM(IF(Pessoa.Nu_Idade BETWEEN 15 AND 20,1,0)) as '15 - 20',
       SUM(IF(Pessoa.Nu_Idade BETWEEN 20 AND 25,1,0)) as '20 - 25',
       SUM(IF(Pessoa.Nu_Idade BETWEEN 25 AND 99,1,0)) as '25 - 99'
FROM Pessoa
INNER JOIN Aluno ON Pessoa.Cd_Pessoa = Aluno.Cd_Pessoa
GROUP BY Pessoa.Nm_Sexo