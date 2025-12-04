SELECT 
    DATE_FORMAT(data_agendamento, '%m/%Y') AS Mes_Ano,
    especialidade,
    SUM(valor_consulta) AS Receita_Prevista
FROM agendamentos
WHERE status_agendamento IN ('Confirmado', 'Realizado')
GROUP BY Mes_Ano, especialidade
ORDER BY Mes_Ano, Receita_Prevista DESC;
