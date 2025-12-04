USE tisaude; 

SELECT especialidade, COUNT(*) AS total_realizados
FROM agendamentos
WHERE status_agendamento = 'Realizado'
GROUP BY especialidade
ORDER BY total_realizados DESC;