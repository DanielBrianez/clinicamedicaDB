USE clinica_medica;

INSERT INTO especialidade (nome, descricao) VALUES
('Cardiologia', 'Diagnóstico e tratamento de doenças do coração.'),
('Pediatria', 'Atendimento de crianças e adolescentes.'),
('Ortopedia', 'Tratamento do sistema musculoesquelético.'),
('Dermatologia', 'Prevenção e tratamento de doenças da pele.');

INSERT INTO paciente (nome, cpf, data_nascimento, telefone, email) VALUES
('Ana Beatriz Souza', '123.456.789-01', '1995-03-15', '(11) 99999-1001', 'ana.souza@email.com'),
('Carlos Eduardo Lima', '234.567.890-12', '1988-07-22', '(11) 99999-1002', 'carlos.lima@email.com'),
('Mariana Oliveira Santos', '345.678.901-23', '2001-11-08', '(11) 99999-1003', 'mariana.santos@email.com'),
('João Pedro Almeida', '456.789.012-34', '1979-01-30', '(11) 99999-1004', 'joao.almeida@email.com'),
('Beatriz Martins Costa', '567.890.123-45', '2010-09-12', '(11) 99999-1005', 'beatriz.costa@email.com'),
('Rafael Henrique Souza', '678.901.234-56', '1992-05-19', '(11) 99999-1006', 'rafael.souza@email.com');

INSERT INTO medico (nome, crm, telefone, email, especialidade_id) VALUES
('Dr. Marcelo Ferreira', 'CRM-SP-100001', '(11) 98888-2001', 'marcelo@clinica.com', 1),
('Dra. Juliana Mendes', 'CRM-SP-100002', '(11) 98888-2002', 'juliana@clinica.com', 2),
('Dr. Ricardo Martins', 'CRM-SP-100003', '(11) 98888-2003', 'ricardo@clinica.com', 3),
('Dra. Camila Rocha', 'CRM-SP-100004', '(11) 98888-2004', 'camila@clinica.com', 4);

INSERT INTO prontuario (paciente_id, data_criacao, historico_clinico, alergias) VALUES
(1, '2026-08-01', 'Acompanhamento clínico periódico.', 'Nenhuma conhecida.'),
(2, '2026-08-02', 'Acompanhamento cardiológico.', 'Penicilina.'),
(3, '2026-08-03', 'Acompanhamento pediátrico.', 'Nenhuma conhecida.'),
(4, '2026-08-04', 'Histórico de dores articulares.', 'Dipirona.'),
(5, '2026-08-05', 'Acompanhamento dermatológico.', 'Nenhuma conhecida.'),
(6, '2026-08-06', 'Histórico clínico geral.', 'Ibuprofeno.');

INSERT INTO consulta (paciente_id, medico_id, data_hora, status, observacoes) VALUES
(1, 1, '2026-08-10 09:00:00', 'Realizada', 'Avaliação cardiológica de rotina.'),
(2, 1, '2026-08-10 10:30:00', 'Realizada', 'Acompanhamento cardiológico.'),
(3, 2, '2026-08-11 09:30:00', 'Realizada', 'Consulta pediátrica de rotina.'),
(4, 3, '2026-08-12 14:00:00', 'Agendada', 'Avaliação de dor no joelho.'),
(5, 4, '2026-08-13 15:30:00', 'Realizada', 'Avaliação dermatológica.'),
(6, 1, '2026-08-14 11:00:00', 'Cancelada', 'Paciente solicitou cancelamento.');

SELECT * FROM especialidade;
SELECT * FROM paciente;
SELECT * FROM medico;
SELECT * FROM prontuario;
SELECT * FROM consulta;