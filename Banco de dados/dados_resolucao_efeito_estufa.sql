SELECT * FROM `basedosdados.br_seeg_emissoes.brasil` LIMIT 1000;

-- Qual é o total de emissões de gases por tipo de emissão?
SELECT
    tipo_emissao,
    sum(emissao) AS total_emissao
  FROM
    `basedosdados.br_seeg_emissoes.brasil`
  GROUP BY 1;
  
  --  Qual gás possui a maior emissão total no Brasil?
  
  SELECT
    gas,
    sum(emissao) AS total_emissao
  FROM
    `basedosdados.br_seeg_emissoes.brasil`
  GROUP BY 1
  ORDER BY 2 DESC
  LIMIT 2;

  -- Como as emissões variam entre diferentes atividades econômicas?
  SELECT
    atividade_economica,
    sum(emissao) AS total_emissao
  FROM
    `basedosdados.br_seeg_emissoes.brasil`
  GROUP BY 1;

  -- Qual é a contribuição de cada produto para as emissões de gases?
  SELECT
    produto,
    sum(emissao) AS total_emissao
  FROM
    `basedosdados.br_seeg_emissoes.brasil`
  GROUP BY 1;

-- Quais níveis de atividade (nível 1 a nível 6) apresentam as maiores emissões?
SELECT
    nivel_1,
    nivel_2,
    nivel_3,
    nivel_4,
    nivel_5,
    nivel_6,
    sum(emissao) AS total_emissao
  FROM
    `basedosdados.br_seeg_emissoes.brasil`
  GROUP BY 1, 2, 3, 4, 5, 6;

-- Qual é a relação entre o tipo de emissão e o gás emitido?
SELECT
    tipo_emissao,
    gas,
    sum(emissao) AS total_emissao
  FROM
    `basedosdados.br_seeg_emissoes.brasil`
  GROUP BY 1, 2;

-- Quais são as atividades econômicas que mais contribuem para a emissão de gases de efeito estufa?
SELECT
    atividade_economica,
    sum(emissao) AS total_emissao
  FROM
    `basedosdados.br_seeg_emissoes.brasil`
  GROUP BY 1;

--  Como as emissões mudam quando observadas por diferentes níveis de atividade?
SELECT
    nivel_1,
    nivel_2,
    nivel_3,
    nivel_4,
    nivel_5,
    nivel_6,
    sum(emissao) AS total_emissao
  FROM
    `basedosdados.br_seeg_emissoes.brasil`
  GROUP BY 1, 2, 3, 4, 5, 6;