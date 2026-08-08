PRAGMA foreign_keys = ON;

CREATE TABLE especialidade (
    especialidade_id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    descricao TEXT
);

CREATE TABLE medico (
    medico_id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    crm TEXT NOT NULL UNIQUE,
    telefone TEXT,
    email TEXT,
    especialidade_id INTEGER NOT NULL,

    FOREIGN KEY (especialidade_id)
        REFERENCES especialidade(especialidade_id)
);

CREATE TABLE paciente (
    paciente_id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cpf TEXT NOT NULL UNIQUE,
    data_nascimento DATE,
    telefone TEXT,
    email TEXT
);

CREATE TABLE prontuario (
    prontuario_id INTEGER PRIMARY KEY,
    paciente_id INTEGER NOT NULL UNIQUE,
    data_criacao DATE NOT NULL,
    historico_clinico TEXT,
    alergias TEXT,

    FOREIGN KEY (paciente_id)
        REFERENCES paciente(paciente_id)
);

CREATE TABLE consulta (
    consulta_id INTEGER PRIMARY KEY,
    paciente_id INTEGER NOT NULL,
    medico_id INTEGER NOT NULL,
    data_hora DATETIME NOT NULL,
    status TEXT NOT NULL,
    observacoes TEXT,

    FOREIGN KEY (paciente_id)
        REFERENCES paciente(paciente_id),

    FOREIGN KEY (medico_id)
        REFERENCES medico(medico_id)
);