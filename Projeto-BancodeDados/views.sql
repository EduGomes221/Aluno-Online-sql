CREATE OR REPLACE VIEW vw_alunos_info AS
SELECT 
    id,
    name,
    email,
    cpf,
    nota,
    CASE 
        WHEN nota >= 7 THEN 'APROVADO'
        WHEN nota < 7 THEN 'REPROVADO'
        ELSE 'SEM NOTA'
    END AS status
FROM alunos;

CREATE OR REPLACE VIEW vw_pessoas AS
SELECT name, email, 'ALUNO' AS tipo
FROM alunos

UNION ALL

SELECT name, email, 'PROFESSOR' AS tipo
FROM professores;