-- DROP FUNCTION public.atualizar_data_alunos();

CREATE OR REPLACE FUNCTION public.atualizar_data_alunos()
 RETURNS trigger
 LANGUAGE plpgsql
AS $function$
BEGIN
    NEW.data_atualizacao = NOW();
    RETURN NEW;
END;
$function$
;