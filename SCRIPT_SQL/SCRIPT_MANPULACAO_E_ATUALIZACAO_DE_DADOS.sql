-- Listando todos os agendamentos, da especialidade cardiologia
SELECT *
FROM agendamentos
WHERE especialidade = 'Cardiologia'
AND status_agendamento = 'Agendado';

-- Atualizando o status e acrescentando 10% ao valor da consulta
UPDATE agendamentos
SET status_agendamento = 'Confirmado',
    valor_consulta = valor_consulta * 1.10
WHERE especialidade = 'Cardiologia'
  AND status_agendamento = 'Agendado';

-- Buscando os dados, para saber se foi atualizado.
SELECT *
FROM agendamentos
WHERE especialidade = 'Cardiologia'
AND status_agendamento = 'Confirmado';