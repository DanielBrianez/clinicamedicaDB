USE clinica_medica;

CREATE TABLE IF NOT EXISTS especialidade (
    especialidade_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    descricao TEXT
);

CREATE TABLE IF NOT EXISTS paciente (
    paciente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    data_nascimento DATE,
    telefone VARCHAR(20),
    email VARCHAR(120)
);

CREATE TABLE IF NOT EXISTS medico (
    medico_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    crm VARCHAR(30) NOT NULL UNIQUE,
    telefone VARCHAR(20),
    email VARCHAR(120),
    especialidade_id INT NOT NULL,
    CONSTRAINT fk_medico_especialidade
        FOREIGN KEY (especialidade_id)
        REFERENCES especialidade(especialidade_id)
);

CREATE TABLE IF NOT EXISTS prontuario (
    prontuario_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT NOT NULL UNIQUE,
    data_criacao DATE NOT NULL,
    historico_clinico TEXT,
    alergias TEXT,
    CONSTRAINT fk_prontuario_paciente
        FOREIGN KEY (paciente_id)
        REFERENCES paciente(paciente_id)
);

CREATE TABLE IF NOT EXISTS consulta (
    consulta_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT NOT NULL,
    medico_id INT NOT NULL,
    data_hora DATETIME NOT NULL,
    status VARCHAR(30) NOT NULL,
    observacoes TEXT,
    CONSTRAINT fk_consulta_paciente
        FOREIGN KEY (paciente_id)
        REFERENCES paciente(paciente_id),
    CONSTRAINT fk_consulta_medico
        FOREIGN KEY (medico_id)
        REFERENCES medico(medico_id)
);

SHOW TABLES;