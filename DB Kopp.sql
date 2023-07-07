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

ALTER TABLE "Infracao" ADD FOREIGN KEY ("remessa_id") REFERENCES "Remessa" ("id");
