CREATE DATABASE tisaude;
 USE tisaude;
 
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
 
 SELECT * FROM agendamentos;
 

 
 