USE clinica_medica;

-- 1. SELECT simples
SELECT * FROM paciente;

-- 2. WHERE
SELECT paciente_id, nome, cpf
FROM paciente
WHERE nome LIKE '%Souza%';

-- 3. ORDER BY
SELECT paciente_id, nome, cpf
FROM paciente
ORDER BY nome ASC;

-- 4. COUNT
SELECT COUNT(*) AS total_pacientes
FROM paciente;

-- 5. MIN / MAX
SELECT MIN(data_hora) AS primeira_consulta,
       MAX(data_hora) AS ultima_consulta
FROM consulta;

-- 6. GROUP BY
SELECT medico_id, COUNT(*) AS total_consultas
FROM consulta
GROUP BY medico_id;

-- 7. INNER JOIN
SELECT c.consulta_id, p.nome AS paciente, m.nome AS medico,
       c.data_hora, c.status
FROM consulta c
INNER JOIN paciente p ON c.paciente_id = p.paciente_id
INNER JOIN medico m ON c.medico_id = m.medico_id
ORDER BY c.data_hora;

-- 8. LEFT JOIN
SELECT p.paciente_id, p.nome AS paciente,
       c.consulta_id, c.data_hora
FROM paciente p
LEFT JOIN consulta c ON p.paciente_id = c.paciente_id
ORDER BY p.nome;

-- 9. Múltiplas tabelas
SELECT c.consulta_id, p.nome AS paciente, m.nome AS medico,
       e.nome AS especialidade, c.data_hora, c.status
FROM consulta c
INNER JOIN paciente p ON c.paciente_id = p.paciente_id
INNER JOIN medico m ON c.medico_id = m.medico_id
INNER JOIN especialidade e ON m.especialidade_id = e.especialidade_id
ORDER BY c.data_hora;

-- 10. JOIN + GROUP BY + COUNT + ORDER BY
SELECT e.nome AS especialidade,
       COUNT(c.consulta_id) AS total_consultas
FROM especialidade e
INNER JOIN medico m ON e.especialidade_id = m.especialidade_id
LEFT JOIN consulta c ON m.medico_id = c.medico_id
GROUP BY e.especialidade_id, e.nome
ORDER BY total_consultas DESC;