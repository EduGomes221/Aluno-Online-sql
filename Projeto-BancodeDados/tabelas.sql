CREATE TABLE alunos (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    cpf VARCHAR(14),
    nota NUMERIC(3,1),
    data_atualizacao TIMESTAMP
);

CREATE TABLE professores (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    cpf VARCHAR(14)
);