-- Selecionando os pacientes que tiveram 2 ou mais agendamentos cancelados.
SELECT id_paciente, COUNT(*) AS total_cancelamentos
FROM agendamentos
WHERE status_agendamento = 'Cancelado'
GROUP BY id_paciente
HAVING COUNT(*) >= 2;
