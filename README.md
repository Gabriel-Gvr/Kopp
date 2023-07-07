# Kopp
Um programa com exercício de programação e banco de dados feito a partir de um desafio técnico!

Exercício 1:

![Print Running](https://github.com/Gabriel-Gvr/Kopp/assets/85135553/bcfd9bed-769c-4d78-9945-b363c70fbb6e)

O sistema recebe uma lista de valores, gera um número sequencial para cada valor 
(iniciando em 1) e devolve uma String com os sequencias inteiros concatenados a um texto e ao seu
respectivo valor. Ao final, apresenta o total da soma dos valores.

Exercício 2: 

![Captura de Tela (26)](https://github.com/Gabriel-Gvr/Kopp/assets/85135553/dbd31047-bf39-44c6-a7ae-11857e68a098)


CREATE TABLE Remessa (
  id SERIAL PRIMARY KEY,
  total_infractions INTEGER,
  status VARCHAR(20)
);

CREATE TABLE Infracao (
  id SERIAL PRIMARY KEY,
  remessa_id INTEGER REFERENCES Remessa(id),
  numero VARCHAR(20),
  data_hora TIMESTAMP,
  equipamento VARCHAR(50),
  velocidade_permitida INTEGER,
  velocidade_medida INTEGER,
  valida BOOLEAN
);

SELECT *
FROM Infracao
WHERE velocidade_medida >= 0.2 * velocidade_permitida
ORDER BY data_hora;

SELECT Remessa.id, Remessa.status, Remessa.total_infractions,
       COUNT(CASE WHEN Infracao.valida THEN 1 END) AS total_validas,
       COUNT(CASE WHEN NOT Infracao.valida THEN 1 END) AS total_invalidas
FROM Remessa
LEFT JOIN Infracao ON Remessa.id = Infracao.remessa_id
GROUP BY Remessa.id
ORDER BY Remessa.status;

------------------------------------------------------------------------------------------------------------------

Modelo Físico do banco de dados:

![Captura de Tela (28)](https://github.com/Gabriel-Gvr/Kopp/assets/85135553/5b21b7f6-7aa5-4321-8382-b4cd0e6e1bb2)



