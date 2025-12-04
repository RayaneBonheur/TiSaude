# Ti.Saude

Este projeto foi desenvolvido para atender ao desafio técnico proposto pela Ti.Saúde, que visa avaliar habilidades essenciais em manipulação de dados, SQL e Python para análise de agendamentos de consultas e procedimentos médicos. O objetivo é estruturar, manipular e analisar os dados para fornecer relatórios estratégicos que possam auxiliar na otimização da gestão dos serviços de saúde.

------

## OBJETIVO
- Estruturar um banco de dados para armazenar dados de agendamentos a partir de um arquivo CSV;
- Realizar manipulação e atualização dos dados via comandos SQL;
- Gerar relatórios estratégicos utilizando consultas SQL;
- Automatizar consultas e análises simples utilizando Python e a biblioteca Pandas;
- Criar visualizações que destaquem insights relevantes para a Ti.Saúde;

------

## REQUISITOS 
- Criação da tabela agendamentos para armazenar dados do CSV;
- Atualização dos agendamentos da especialidade "Cardiologia" conforme regras definidas;
- Geração de 4 relatórios estratégicos baseados nos dados;
- Desenvolvimento de um script Python para análise e exportação de dados filtrados;
- Desenvolvimento de uma visualização gráfica dos dados analisados;
- Documentação clara e organizada dos passos e ferramentas usadas.

------

## ESCOPO
| Tarefa                                   | Descrição                                                                                     |
| ---------------------------------------- | --------------------------------------------------------------------------------------------- |
| Criação e estruturação do banco de dados | Criar banco e tabela `agendamentos` adequada para dados do arquivo CSV.                       |
| Importação de dados                      | Importar dados do arquivo `agendamentos_tisaude.csv` para a tabela criada.                    |
| Atualização de dados (SQL)               | Atualizar status e valores dos agendamentos de "Cardiologia" com status "Agendado".           |
| Geração de relatórios (SQL)              | Criar consultas para relatórios: produtividade, cancelamentos, receita mensal e taxa no-show. |
| Automação com Python                     | Script para selecionar e analisar agendamentos de "Ortopedia" realizados nos últimos 30 dias. |
| Visualização de dados                    | Criar gráficos ou dashboards para evidenciar insights relevantes.                             |
| Documentação                             | Arquivo README com explicações do projeto, instruções e bibliotecas usadas.                   |

------

## METODOLOGIA DE DESENVOLVIMENTO
1.Levantamento dos Requisitos: Entendimento do desafio e definição das tarefas.

2.Modelagem do Banco: Criação da tabela e definição dos tipos de dados.

3.Importação de Dados: Transferência dos dados CSV para o banco.

4.Manipulação dos Dados: Aplicação de regras via SQL para atualização.

5.Análise e Relatórios: Desenvolvimento de consultas para gerar informações estratégicas.

6.Automação com Python: Desenvolvimento de script para consultas dinâmicas e exportação.

7.Visualização: Criação de gráficos para melhor entendimento dos dados.

8.Documentação: Registro dos processos, instruções e tecnologias utilizadas.

------

## TECNOLOGIAS UTILIZADAS
| Tecnologia                 | Descrição                                                                                                    |
| -------------------------- | ------------------------------------------------------------------------------------------------------------ |
| **XAMPP**                  | Ambiente local que inclui Apache, PHP, MySQL/MariaDB, facilitando a configuração e uso do banco MySQL localmente para desenvolvimento. |
| **MySQL**                  | Sistema gerenciador de banco de dados relacional, usado para armazenar e manipular os dados de agendamentos. |
| **Python 3.x**             | Linguagem de programação para automação da análise dos dados e exportação de arquivos.                       |
| **pandas**                 | Biblioteca Python para manipulação e análise de dados estruturados.                                          |
| **mysql-connector-python** | Biblioteca Python para conexão e execução de comandos no MySQL via Python.                                   |
| **Excel**                  | Ferramenta para visualização gráfica dos dados, criação de gráficos a partir das consultas SQL exportadas.   |

------

## COMO RODAR O PROJETO
1. Banco de Dados
- Instale o MySQL (ou utilize uma instância já disponível).
- Crie um banco de dados novo para o projeto.
- Execute o script SQL de criação da tabela agendamentos:
```sql
CREATE TABLE agendamentos (
  id_agendamento INT PRIMARY KEY,
  id_paciente INT,
  id_medico INT,
  data_agendamento DATE,
  tipo_consulta VARCHAR(50),
  especialidade VARCHAR(50),
  status_agendamento VARCHAR(50),
  valor_consulta DECIMAL(10,2)
);
```

- Importe o arquivo agendamentos_tisaude.csv para a tabela agendamentos.
- Execute o script SQL de atualização:

```
UPDATE agendamentos
SET status_agendamento = 'Confirmado',
    valor_consulta = valor_consulta * 1.10
WHERE especialidade = 'Cardiologia' AND status_agendamento = 'Agendado';

```

2. Python
- Certifique-se de ter Python 3.x instalado.
- Instale as bibliotecas necessárias com o comando:
```  
pip install pandas mysql-connector-python
```
- Configure as credenciais de acesso ao banco no arquivo automacao_ortopedia.py.
- Execute o script Python:
``` 
python automacao_ortopedia.py
```
3. Visualização
Utilize o Excel para abrir as consultas exportadas e crie gráficos conforme desejado.
Ou utilize qualquer ferramenta de BI de sua preferência.

------

## ESTRUTURA DOS ARQUIVOS NO REPOSITÓRIO
```
/desafio-tisaude/
│
├── agendamentos_tisaude.csv           # Arquivo de dados inicial
├── create_table_agendamentos.sql      # Script para criar tabela no MySQL
├── update_cardiologia.sql              # Script para atualização de dados
├── relatorios.sql                     # Scripts SQL para os 4 relatórios
├── automacao_ortopedia.py             # Script Python para automação e análise
├── ortopedia_ultimos_30dias.csv       # CSV gerado pelo script Python
├── visualizacao/                      # Pasta opcional para imagens ou dashboards
│   └── produtividade_especialidade.png
└── README.md                         # Este arquivo de documentação
```

------

## Observações
* Os scripts SQL estão comentados para facilitar o entendimento da lógica.
* Os dados das datas foram tratados considerando o padrão YYYY-MM-DD.
* O acréscimo de 10% foi aplicado multiplicando o valor original por 1.10.
* A seleção dos dados dos últimos 30 dias é dinâmica, baseada na data atual de execução do script.
* O projeto pode ser adaptado para outros SGBDs com pequenas alterações.






