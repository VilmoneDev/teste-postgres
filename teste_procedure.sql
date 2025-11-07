-- Teste da procedure
-- Observação: Não entendi direito essa parte do teste, fiquei na duvida se era pra usar call ou select, porém como a questão 4 solicitava uma procedure, acabei fazendo com call.

CALL sp_cancelar_solicitacao(4, 'Solicitação duplicada');
