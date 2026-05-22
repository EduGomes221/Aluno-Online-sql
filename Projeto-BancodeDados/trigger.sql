CREATE OR REPLACE FUNCTION atualizar_data_alunos()
RETURNS TRIGGER AS $$
BEGIN
    NEW.data_atualizacao = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_atualiza_alunos
BEFORE UPDATE ON alunos
FOR EACH ROW
EXECUTE FUNCTION atualizar_data_alunos();