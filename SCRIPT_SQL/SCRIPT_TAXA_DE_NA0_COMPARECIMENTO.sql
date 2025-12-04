SELECT 
    SUM(CASE WHEN status_agendamento = 'Não Compareceu' THEN 1 ELSE 0 END) AS total_no_show,
    COUNT(*) AS total_agendamentos,
    ROUND(
        (SUM(CASE WHEN status_agendamento = 'Não Compareceu' THEN 1 ELSE 0 END) / COUNT(*)) * 100, 
        2
    ) AS Taxa_No_Show_Percentual
FROM agendamentos
WHERE status_agendamento <> 'Cancelado';