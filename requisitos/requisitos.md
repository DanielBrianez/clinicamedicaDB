# Levantamento de Requisitos

## 1. Requisitos Funcionais

### RF01 — Cadastrar pacientes
O sistema deverá permitir o cadastro de pacientes, armazenando informações como nome, CPF, data de nascimento, telefone e e-mail.

### RF02 — Cadastrar médicos
O sistema deverá permitir o cadastro de médicos, armazenando nome, CRM, telefone, e-mail e sua especialidade.

### RF03 — Cadastrar especialidades
O sistema deverá permitir o cadastro das especialidades médicas disponíveis na clínica.

### RF04 — Cadastrar prontuários
O sistema deverá permitir o registro de prontuários vinculados aos pacientes, contendo histórico clínico e informações sobre alergias.

### RF05 — Registrar consultas
O sistema deverá permitir o registro de consultas, relacionando paciente e médico, além de armazenar data, horário, status e observações.

### RF06 — Consultar informações
O sistema deverá permitir a consulta das informações armazenadas no banco de dados.

### RF07 — Relacionar informações
O sistema deverá permitir a obtenção de informações relacionadas entre pacientes, médicos, especialidades, prontuários e consultas por meio de consultas SQL.

## 2. Requisitos Não Funcionais

### RNF01 — SGBD
O banco de dados deverá ser implementado utilizando o MySQL.

### RNF02 — Integridade
O banco deverá utilizar chaves primárias, chaves estrangeiras e restrições de integridade para garantir a consistência dos dados.

### RNF03 — Unicidade
Informações que necessitam de identificação única, como CPF do paciente e CRM do médico, deverão possuir restrição de unicidade.

### RNF04 — Organização
O banco deverá possuir uma estrutura organizada e normalizada, evitando redundância desnecessária de informações.

### RNF05 — Manutenibilidade
Os scripts SQL deverão ser organizados de forma que permitam a criação, população e consulta do banco de maneira estruturada.