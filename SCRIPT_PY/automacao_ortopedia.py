import mysql.connector
import pandas as pd
from datetime import datetime, timedelta

# Conectando ao banco de dados no XAMPP
conexao = mysql.connector.connect(
    host='localhost',
    user='root',
    password='',  # Sem senha
    database='tisaude'  # Nome exato do seu banco
)

# Criando o cursor para executar consultas
cursor = conexao.cursor()

# Definindo a data de 30 dias atrás
data_limite = (datetime.now() - timedelta(days=30)).strftime('%Y-%m-%d')

# Escrevendo a consulta SQL
consulta = f"""
SELECT * FROM agendamentos
WHERE especialidade = 'Ortopedia'
AND status_agendamento = 'Realizado'
AND data_agendamento >= '{data_limite}';
"""

# Executando a consulta
cursor.execute(consulta)

# Pegando os resultados
resultados = cursor.fetchall()

# Pegando os nomes das colunas para criar o DataFrame
colunas = [i[0] for i in cursor.description]

# Criando o DataFrame com o Pandas
df = pd.DataFrame(resultados, columns=colunas)

# Calculando o valor médio das consultas
media_valor = df['valor_consulta'].mean()

# Exportando o DataFrame para CSV
df.to_csv('ortopedia_ultimos_30dias.csv', index=False)

# Mostrando o valor médio
print(f'O valor médio das consultas de Ortopedia nos últimos 30 dias é: R$ {media_valor:.2f}')

# Fechando a conexão com o banco
cursor.close()
conexao.close()
