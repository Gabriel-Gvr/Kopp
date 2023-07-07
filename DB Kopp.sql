CREATE TABLE "Remessa" (
  "id" INT PRIMARY KEY,
  "total_infractions" INT,
  "status" VARCHAR(20)
);

CREATE TABLE "Infracao" (
  "id" INT PRIMARY KEY,
  "remessa_id" INT,
  "numero" VARCHAR(20),
  "data_hora" TIMESTAMP,
  "equipamento" VARCHAR(50),
  "velocidade_permitida" INT,
  "velocidade_medida" INT,
  "valida" BOOLEAN
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
GROUP BY Remessa.id, Remessa.status
ORDER BY Remessa.status;


ALTER TABLE "Infracao" ADD FOREIGN KEY ("remessa_id") REFERENCES "Remessa" ("id");
