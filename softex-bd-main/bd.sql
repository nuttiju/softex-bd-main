CREATE TABLE Projeto (
    numero INT PRIMARY KEY,
    descricao TEXT NOT NULL
);

INSERT INTO Projeto (numero, descricao) VALUES
    (1, 'Desenvolvimento de um sistema de gerenciamento de inventário'),
    (2, 'Implementação de uma solução de e-commerce'),
    (3, 'Desenvolvimento de um aplicativo móvel para rastreamento de fitness'),
    (4, 'Migração de banco de dados para a nuvem'),
    (5, 'Criação de um portal de serviços ao cliente'),
    (6, 'Desenvolvimento de uma ferramenta de análise de dados'),
    (7, 'Implementação de um sistema de CRM'),
    (8, 'Automatização de processos de RH'),
    (9, 'Desenvolvimento de um sistema de gestão escolar'),
    (10, 'Criação de um site institucional para uma ONG'),
    (11, 'Implementação de uma solução de segurança cibernética'),
    (12, 'Desenvolvimento de um sistema de agendamento de consultas médicas'),
    (13, 'Criação de um portal de notícias'),
    (14, 'Desenvolvimento de um sistema de pagamento online'),
    (15, 'Implementação de uma plataforma de educação online'),
    (16, 'Desenvolvimento de uma solução de marketing digital'),
    (17, 'Criação de um sistema de gerenciamento de projetos'),
    (18, 'Implementação de uma rede social corporativa'),
    (19, 'Desenvolvimento de um aplicativo de delivery'),
    (20, 'Criação de um sistema de reservas de hotel');

CREATE TABLE Comissao (
    codigo INT PRIMARY KEY,
    data_criacao DATE NOT NULL
);

INSERT INTO Comissao (codigo, data_criacao)
VALUES
    (101, '15-01-2023'),
    (102, '10-02-2023'),
    (103, '05-03-2023'),
    (104, '12-04-2023'),
    (105, '20-05-2023'),
    (106, '25-06-2023'),
    (107, '18-07-2023'),
    (108, '30-08-2023'),
    (109, '14-09-2023'),
    (110, '22-10-2023'),
    (111, '03-11-2023'),
    (112, '08-12-2023'),
    (113, '10-01-2024'),
    (114, '15-02-2024'),
    (115, '12-03-2024'),
    (116, '09-04-2024'),
    (117, '20-05-2024'),
    (118, '18-06-2024'),
    (119, '25-07-2024'),
    (120, '30-08-2024'),
    (121, '15-09-2024');


CREATE TABLE Pesquisador (
    cpf CHAR(11) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    instituicao VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    senioridade BOOLEAN NOT NULL
);

INSERT INTO Pesquisador (cpf, nome, instituicao, data_nascimento, senioridade)
VALUES
    ('12345678901', 'Ana Silva', 'Universidade Federal de São Paulo', '14-03-1995', TRUE),
    ('23456789012', 'Bruno Costa', 'Universidade Estadual de Campinas', '22-07-1990', FALSE),
    ('34567890123', 'Carla Oliveira', 'Universidade Federal do Rio de Janeiro', '30-11-1982', TRUE),
    ('45678901234', 'Daniel Almeida', 'Universidade Federal de Minas Gerais', '18-05-1978', TRUE),
    ('56789012345', 'Elena Santos', 'Universidade Federal do Paraná', '20-02-1988', FALSE),
    ('67890123456', 'Felipe Lima', 'Universidade de São Paulo', '05-09-1991', FALSE),
    ('78901234567', 'Gabriela Pereira', 'Universidade Federal de Santa Catarina', '13-12-1984', TRUE),
    ('89012345678', 'Hugo Martins', 'Universidade Federal do Ceará', '25-04-1989', FALSE),
    ('90123456789', 'Isabela Fernandes', 'Universidade Federal de Pernambuco', '11-08-1987', TRUE),
    ('01234567890', 'João Pedro Souza', 'Universidade Federal do Espírito Santo', '30-01-1994', FALSE),
    ('12345098765', 'Karla Rodrigues', 'Universidade Federal do Pará', '15-06-1986', TRUE),
    ('23456109876', 'Lucas Carvalho', 'Universidade Federal de Goiás', '08-10-1989', FALSE),
    ('34567210987', 'Mariana Freitas', 'Universidade Federal de São Carlos', '28-03-1992', FALSE),
    ('45678321098', 'Neto Vieira', 'Universidade Federal da Bahia', '01-07-1981', TRUE),
    ('56789432109', 'Olivia Gomes', 'Universidade Federal de Mato Grosso', '20-12-1990', FALSE),
    ('67890543210', 'Pedro Henrique Lima', 'Universidade Federal do Rio Grande do Sul', '23-11-1990', TRUE),
    ('78901654321', 'Quésia Ribeiro', 'Universidade Federal de São João Del-Rei', '09-05-1987', TRUE),
    ('89012765432', 'Rafael Martins', 'Universidade Federal de Uberlândia', '19-01-1994', FALSE),
    ('90123876543', 'Sofia Campos', 'Universidade Federal de Lavras', '14-04-1992', FALSE),
    ('01234987654', 'Tiago Fernandes', 'Universidade Federal de Sergipe', '31-10-1988', TRUE);


CREATE TABLE Atividade (
    codigo INT PRIMARY KEY,
    descricao TEXT NOT NULL,
    projeto_numero INT,
    FOREIGN KEY (projeto_numero) REFERENCES Projeto(numero)
);

INSERT INTO Atividade (codigo, descricao, projeto_numero) VALUES
    (1, 'Análise de requisitos para o sistema de inventário', 1),
    (2, 'Desenvolvimento do frontend para a solução de e-commerce', 2),
    (3, 'Criação de funcionalidades para o rastreamento de fitness', 3),
    (4, 'Configuração do ambiente de nuvem para migração de dados', 4),
    (5, 'Desenvolvimento do módulo de atendimento ao cliente do portal', 5),
    (6, 'Criação de relatórios para análise de dados', 6),
    (7, 'Integração do CRM com sistemas existentes', 7),
    (8, 'Automatização de processos de contratação e demissão', 8),
    (9, 'Desenvolvimento de funcionalidades para gestão de turmas e alunos', 9),
    (10, 'Criação do layout do site para a ONG', 10),
    (11, 'Desenvolvimento de protocolos de segurança para a rede', 11),
    (12, 'Desenvolvimento do sistema de agendamento e gerenciamento de consultas', 12),
    (13, 'Desenvolvimento de um módulo de categorização de notícias', 13),
    (14, 'Implementação do sistema de pagamentos e checkout', 14),
    (15, 'Criação de cursos e conteúdo para a plataforma de educação online', 15),
    (16, 'Desenvolvimento de estratégias e campanhas para marketing digital', 16),
    (17, 'Implementação de funcionalidades para gestão de tarefas e projetos', 17),
    (18, 'Desenvolvimento de recursos de colaboração e comunicação para a rede social', 18),
    (19, 'Desenvolvimento de funcionalidades de rastreamento de pedidos para o aplicativo de delivery', 19),
    (20, 'Desenvolvimento do módulo de reservas e check-in para o sistema de hotéis', 20);


CREATE TABLE Subatividade (
    codigo INT PRIMARY KEY,
    descricao TEXT NOT NULL,
    atividade_super INT,
    FOREIGN KEY (atividade_super) REFERENCES Atividade(codigo)
);


INSERT INTO Subatividade (codigo, descricao, atividade_super) VALUES
    (1, 'Recolher requisitos iniciais do cliente', 1),
    (2, 'Definir escopo do sistema de inventário', 1),
    (3, 'Desenvolver protótipos de páginas para o e-commerce', 2),
    (4, 'Implementar funcionalidades de busca e filtro para o e-commerce', 2),
    (5, 'Criar tela de registro e login no app de fitness', 3),
    (6, 'Implementar funcionalidade de rastreamento de atividades físicas no app', 3),
    (7, 'Configurar instâncias de banco de dados na nuvem', 4),
    (8, 'Realizar testes de carga para a solução de nuvem', 4),
    (9, 'Desenvolver módulo de tickets para suporte ao cliente', 5),
    (10, 'Implementar sistema de feedback de clientes para o portal', 5),
    (11, 'Criar templates para relatórios de análise de dados', 6),
    (12, 'Desenvolver dashboards interativos para análise de dados', 6),
    (13, 'Integrar CRM com sistema de e-mails', 7),
    (14, 'Desenvolver funcionalidades de histórico de interações no CRM', 7),
    (15, 'Automatizar geração de contratos e documentos de RH', 8),
    (16, 'Desenvolver módulo de avaliações de desempenho para funcionários', 8),
    (17, 'Criar funcionalidades de gestão de notas e atividades escolares', 9),
    (18, 'Desenvolver módulo de comunicação entre alunos e professores', 9),
    (19, 'Criar conteúdo para a página inicial do site da ONG', 10),
    (20, 'Desenvolver funcionalidades de cadastro e edição de informações de projetos para a ONG', 10),
    (21, 'Desenvolver funcionalidades de relatórios de segurança para a rede', 11),
    (22, 'Criar plano de contingência para incidentes de segurança', 11),
    (23, 'Implementar funcionalidades de marcação de consultas e lembretes', 12),
    (24, 'Desenvolver módulo de histórico de consultas e exames', 12),
    (25, 'Implementar categorias e tags para notícias no portal', 13),
    (26, 'Desenvolver funcionalidades de busca avançada para o portal de notícias', 13),
    (27, 'Criar integração com sistemas de pagamento para checkout', 14),
    (28, 'Desenvolver funcionalidades de gerenciamento de promoções e cupons', 14),
    (29, 'Desenvolver material de curso e exercícios para a plataforma de educação', 15),
    (30, 'Criar sistema de avaliação de alunos e feedback para cursos', 15),
    (31, 'Desenvolver campanhas publicitárias para mídias sociais', 16),
    (32, 'Criar relatórios de desempenho de campanhas de marketing', 16),
    (33, 'Desenvolver funcionalidade de atribuição de tarefas para a equipe', 17),
    (34, 'Criar relatórios de progresso de projetos para a equipe', 17),
    (35, 'Implementar funcionalidades de mensagens e grupos na rede social', 18),
    (36, 'Desenvolver sistema de gerenciamento de permissões de usuário na rede social', 18),
    (37, 'Desenvolver funcionalidades de rastreamento de status de pedidos', 19),
    (38, 'Criar módulo de avaliação de entregas e feedback dos clientes', 19),
    (39, 'Desenvolver funcionalidades de reservas e cancelamentos de quartos de hotel', 20),
    (40, 'Criar sistema de gerenciamento de disponibilidade de quartos e tarifas', 20);


CREATE TABLE Cargo (
    codigo INT PRIMARY KEY,
    descricao TEXT NOT NULL
);

INSERT INTO Cargo (codigo, descricao) VALUES
    (1, 'Desenvolvedor de Software'),
    (2, 'Analista de Sistemas'),
    (3, 'Gerente de Projetos'),
    (4, 'Arquiteto de Soluções'),
    (5, 'Engenheiro de Dados'),
    (6, 'Administrador de Redes'),
    (7, 'Especialista em Segurança da Informação'),
    (8, 'Consultor de TI'),
    (9, 'Analista de Suporte Técnico'),
    (10, 'Coordenador de TI'),
    (11, 'Analista de Qualidade de Software'),
    (12, 'Designer de Interface'),
    (13, 'Gerente de Produtos'),
    (14, 'Especialista em Nuvem'),
    (15, 'Desenvolvedor Frontend'),
    (16, 'Desenvolvedor Backend'),
    (17, 'Engenheiro de Software'),
    (18, 'Analista de Business Intelligence'),
    (19, 'Desenvolvedor Mobile'),
    (20, 'Analista de Infraestrutura de TI');


CREATE TABLE Artigo (
    matricula INT PRIMARY KEY,
    titulo TEXT NOT NULL,
    nota DECIMAL(4, 2),
    idioma VARCHAR(50)
);

INSERT INTO Artigo (matricula, titulo, nota, idioma) VALUES
    (1, 'A New Approach to Cloud Computing Security', 9.25, 'Inglês'),
    (2, 'Optimizing Database Performance for High Traffic', 8.75, 'Português'),
    (3, 'Machine Learning Techniques for Predictive Analysis', 9.50, 'Inglês'),
    (4, 'Exploring the Internet of Things: Opportunities and Challenges', 8.90, 'Inglês'),
    (5, 'Implementing Agile Methodologies in Software Development', 9.00, 'Português'),
    (6, 'Advanced Topics in Artificial Intelligence', 9.40, 'Inglês'),
    (7, 'An Overview of Blockchain Technology', 8.85, 'Inglês'),
    (8, 'Data Privacy in Cloud-Based Systems', 9.10, 'Português'),
    (9, 'Building Scalable Web Applications', 8.70, 'Inglês'),
    (10, 'Effective Strategies for IT Project Management', 9.20, 'Português'),
    (11, 'Understanding Quantum Computing and Its Applications', 9.30, 'Inglês'),
    (12, 'Recent Advances in Natural Language Processing', 9.00, 'Inglês'),
    (13, 'The Future of Virtual Reality in Education', 8.95, 'Português'),
    (14, 'Design Patterns for Modern Software Engineering', 8.80, 'Inglês'),
    (15, 'Introduction to Cybersecurity Threats and Prevention', 9.15, 'Português'),
    (16, 'Developing Robust Mobile Applications', 9.05, 'Inglês'),
    (17, 'Big Data Analytics for Business Intelligence', 8.85, 'Inglês'),
    (18, 'Integrating Artificial Intelligence into Business Processes', 9.25, 'Português'),
    (19, 'The Role of DevOps in Modern Software Development', 8.90, 'Inglês'),
    (20, 'Trends and Innovations in Web Development', 9.10, 'Português');


CREATE TABLE Evento (
    codigo INT PRIMARY KEY,
    sigla VARCHAR(10) NOT NULL
);

INSERT INTO Evento (codigo, sigla) VALUES
    (1, 'ICSE'),  -- International Conference on Software Engineering
    (2, 'WWW'),   -- International World Wide Web Conference
    (3, 'AWS'),   -- AWS re:Invent
    (4, 'CES'),    -- Consumer Electronics Show
    (5, 'SWE'),    -- Software Engineering Conference
    (6, 'GDC'),    -- Game Developers Conference
    (7, 'BSides'), -- BSides Security Conference
    (8, 'ICML'),   -- International Conference on Machine Learning
    (9, 'DEFCON'), -- DEF CON Hacking Conference
    (10, 'OOW'),   -- Oracle OpenWorld
    (11, 'RSA'),   -- RSA Conference (Security)
    (12, 'VMworld'),-- VMworld Conference
    (13, 'TechCrunch'), -- TechCrunch Disrupt
    (14, 'Microsoft Build'), -- Microsoft Build
    (15, 'JavaOne'),  -- JavaOne Conference
    (16, 'Google I/O'), -- Google I/O Developer Conference
    (17, 'SXSW'),    -- South by Southwest Festival
    (18, 'NDC'),    -- Norwegian Developers Conference
    (19, 'AWS Summit'), -- AWS Summit
    (20, 'PyCon'),  -- Python Conference


CREATE TABLE ComissaoResponsavel (
    comissao_codigo INT,
    pesquisador_cpf CHAR(11),
    PRIMARY KEY (comissao_codigo, pesquisador_cpf),
    FOREIGN KEY (comissao_codigo) REFERENCES Comissao(codigo),
    FOREIGN KEY (pesquisador_cpf) REFERENCES Pesquisador(cpf)
);


INSERT INTO ComissaoResponsavel (comissao_codigo, pesquisador_cpf) VALUES
    (1, '12345678901'),  
    (1, '23456789012'),  
    (2, '34567890123'),  
    (2, '45678901234'),  
    (3, '56789012345'),  
    (3, '67890123456'),  
    (4, '78901234567'),  
    (4, '89012345678'),  
    (5, '90123456789'),  
    (5, '01234567890'),  
    (6, '12345678901'),  
    (6, '23456789012'),  
    (7, '34567890123'),  
    (7, '45678901234'),  
    (8, '56789012345'),  
    (8, '67890123456'),  
    (9, '78901234567'),  
    (9, '89012345678'),  
    (10, '90123456789'), 
    (10, '01234567890'), 
    (11, '12345678901'), 
    (11, '23456789012'), 
    (12, '34567890123'), 
    (12, '45678901234'), 
    (13, '56789012345'), 
    (13, '67890123456'), 
    (14, '78901234567'), 
    (14, '89012345678'), 
    (15, '90123456789'), 
    (15, '01234567890'), 
    (16, '12345678901'), 
    (16, '23456789012'), 
    (17, '34567890123'), 
    (17, '45678901234'), 
    (18, '56789012345'), 
    (18, '67890123456'), 
    (19, '78901234567'), 
    (19, '89012345678'), 
    (20, '90123456789'), 
    (20, '01234567890'); 


CREATE TABLE ComissaoAprovaProjeto (
    comissao_codigo INT,
    projeto_numero INT,
    PRIMARY KEY (comissao_codigo, projeto_numero),
    FOREIGN KEY (comissao_codigo) REFERENCES Comissao(codigo),
    FOREIGN KEY (projeto_numero) REFERENCES Projeto(numero)
);

INSERT INTO ComissaoAprovaProjeto (comissao_codigo, projeto_numero) VALUES
    (1, 1001),
    (1, 1002),
    (2, 1003),
    (2, 1004),
    (3, 1005),
    (3, 1006),
    (4, 1007),
    (4, 1008),
    (5, 1009),
    (5, 1010),
    (6, 1011),
    (6, 1012),
    (7, 1013),
    (7, 1014),
    (8, 1015),
    (8, 1016),
    (9, 1017),
    (9, 1018),
    (10, 1019),
    (10, 1020);


CREATE TABLE ComissaoParticipadaPesquisador (
    comissao_codigo INT,
    pesquisador_cpf CHAR(11),
    papel VARCHAR(50),
    PRIMARY KEY (comissao_codigo, pesquisador_cpf),
    FOREIGN KEY (comissao_codigo) REFERENCES Comissao(codigo),
    FOREIGN KEY (pesquisador_cpf) REFERENCES Pesquisador(cpf)
);

INSERT INTO ComissaoParticipadaPesquisador (comissao_codigo, pesquisador_cpf, papel) VALUES
    (1, '12345678901', 'Presidente'),
    (1, '23456789012', 'Membro'),
    (2, '34567890123', 'Vice-presidente'),
    (2, '45678901234', 'Membro'),
    (3, '56789012345', 'Membro'),
    (3, '67890123456', 'Relator'),
    (4, '78901234567', 'Presidente'),
    (4, '89012345678', 'Membro'),
    (5, '90123456789', 'Vice-presidente'),
    (5, '01234567890', 'Membro'),
    (6, '12345678901', 'Membro'),
    (6, '23456789012', 'Relator'),
    (7, '34567890123', 'Presidente'),
    (7, '45678901234', 'Membro'),
    (8, '56789012345', 'Vice-presidente'),
    (8, '67890123456', 'Membro'),
    (9, '78901234567', 'Relator'),
    (9, '89012345678', 'Presidente'),
    (10, '90123456789', 'Membro'),
    (10, '01234567890', 'Vice-presidente');


CREATE TABLE AtividadeRealizadaPesquisador (
    atividade_codigo INT,
    pesquisador_cpf CHAR(11),
    data_inicio DATE,
    duracao INT,
    supervisor_cpf CHAR(11),
    PRIMARY KEY (atividade_codigo, pesquisador_cpf),
    FOREIGN KEY (atividade_codigo) REFERENCES Atividade(codigo),
    FOREIGN KEY (pesquisador_cpf) REFERENCES Pesquisador(cpf),
    FOREIGN KEY (supervisor_cpf) REFERENCES Pesquisador(cpf)
);

INSERT INTO AtividadeRealizadaPesquisador (atividade_codigo, pesquisador_cpf, data_inicio, duracao, supervisor_cpf) VALUES
(1, '12345678901', '10/01/2023', 30, '23456789012'),
(1, '23456789012', '10/01/2023', 30, '34567890123'),
(2, '34567890123', '15/02/2023', 45, '45678901234'),
(2, '45678901234', '15/02/2023', 45, '56789012345'),
(3, '56789012345', '20/03/2023', 60, '67890123456'),
(3, '67890123456', '20/03/2023', 60, '78901234567'),
(4, '78901234567', '25/04/2023', 25, '89012345678'),
(4, '89012345678', '25/04/2023', 25, '90123456789'),
(5, '90123456789', '15/05/2023', 40, '01234567890'),
(5, '01234567890', '15/05/2023', 40, '12345678901'),
(6, '12345678901', '10/06/2023', 50, '23456789012'),
(6, '23456789012', '10/06/2023', 50, '34567890123'),
(7, '34567890123', '05/07/2023', 35, '45678901234'),
(7, '45678901234', '05/07/2023', 35, '56789012345'),
(8, '56789012345', '12/08/2023', 55, '67890123456'),
(8, '67890123456', '12/08/2023', 55, '78901234567'),
(9, '78901234567', '18/09/2023', 45, '89012345678'),
(9, '89012345678', '18/09/2023', 45, '90123456789'),
(10, '90123456789', '25/10/2023', 30, '01234567890'),
(10, '01234567890', '25/10/2023', 30, '12345678901');


CREATE TABLE ProjetoCargoPesquisador (
    projeto_numero INT,
    cargo_codigo INT,
    pesquisador_cpf CHAR(11),
    PRIMARY KEY (projeto_numero, cargo_codigo, pesquisador_cpf),
    FOREIGN KEY (projeto_numero) REFERENCES Projeto(numero),
    FOREIGN KEY (cargo_codigo) REFERENCES Cargo(codigo),
    FOREIGN KEY (pesquisador_cpf) REFERENCES Pesquisador(cpf)
);

INSERT INTO ProjetoCargoPesquisador (projeto_numero, cargo_codigo, pesquisador_cpf) VALUES
    (1, 1, '12345678901'),
    (1, 2, '23456789012'),
    (1, 3, '34567890123'),
    (1, 4, '45678901234'),
    (2, 5, '56789012345'),
    (2, 6, '67890123456'),
    (2, 7, '78901234567'),
    (3, 8, '89012345678'),
    (3, 9, '90123456789'),
    (3, 10, '01234567890'),
    (4, 11, '12345678901'),
    (4, 12, '23456789012'),
    (4, 13, '34567890123'),
    (5, 14, '45678901234'),
    (5, 15, '56789012345'),
    (5, 16, '67890123456'),
    (6, 17, '78901234567'),
    (6, 18, '89012345678'),
    (6, 19, '90123456789'),
    (7, 20, '01234567890'),
    (7, 1, '12345678901'),
    (8, 2, '23456789012'),
    (8, 3, '34567890123'),
    (9, 4, '45678901234'),
    (9, 5, '56789012345'),
    (10, 6, '67890123456'),
    (10, 7, '78901234567'),
    (11, 8, '89012345678'),
    (11, 9, '90123456789'),
    (12, 10, '01234567890'),
    (12, 11, '12345678901'),
    (13, 12, '23456789012'),
    (13, 13, '34567890123'),
    (14, 14, '45678901234'),
    (14, 15, '56789012345'),
    (15, 16, '67890123456'),
    (16, 17, '78901234567'),
    (16, 18, '89012345678'),
    (17, 19, '90123456789'),
    (17, 20, '01234567890'),
    (18, 1, '12345678901'),
    (18, 2, '23456789012'),
    (19, 3, '34567890123'),
    (19, 4, '45678901234'),
    (20, 5, '56789012345'),
    (20, 6, '67890123456');


CREATE TABLE ArtigoEscritoPorPesquisador (
    artigo_matricula INT,
    pesquisador_cpf CHAR(11),
    PRIMARY KEY (artigo_matricula, pesquisador_cpf),
    FOREIGN KEY (artigo_matricula) REFERENCES Artigo(matricula),
    FOREIGN KEY (pesquisador_cpf) REFERENCES Pesquisador(cpf)
);

INSERT INTO ArtigoEscritoPorPesquisador (artigo_matricula, pesquisador_cpf) VALUES
    (1, '12345678901'),
    (1, '23456789012'),
    (2, '34567890123'),
    (2, '45678901234'),
    (3, '56789012345'),
    (3, '67890123456'),
    (4, '78901234567'),
    (4, '89012345678'),
    (5, '90123456789'),
    (5, '01234567890'),
    (6, '12345678901'),
    (6, '23456789012'),
    (7, '34567890123'),
    (7, '45678901234'),
    (8, '56789012345'),
    (8, '67890123456'),
    (9, '78901234567'),
    (9, '89012345678'),
    (10, '90123456789'),
    (10, '01234567890'),
    (11, '12345678901'),
    (11, '23456789012'),
    (12, '34567890123'),
    (12, '45678901234'),
    (13, '56789012345'),
    (13, '67890123456'),
    (14, '78901234567'),
    (14, '89012345678'),
    (15, '90123456789'),
    (15, '01234567890'),
    (16, '12345678901'),
    (16, '23456789012'),
    (17, '34567890123'),
    (17, '45678901234'),
    (18, '56789012345'),
    (18, '67890123456'),
    (19, '78901234567'),
    (19, '89012345678'),
    (20, '90123456789'),
    (20, '01234567890'),
    (1, '34567890123'),
    (2, '56789012345'),
    (3, '78901234567'),
    (4, '90123456789'),
    (5, '12345678901'),
    (6, '23456789012'),
    (7, '34567890123'),
    (8, '45678901234'),
    (9, '56789012345'),
    (10, '67890123456'),
    (11, '78901234567'),
    (12, '89012345678'),
    (13, '90123456789'),
    (14, '01234567890'),
    (15, '12345678901'),
    (16, '23456789012'),
    (17, '34567890123'),
    (18, '45678901234'),
    (19, '56789012345'),
    (20, '67890123456');


CREATE TABLE ArtigoPublicadoEmEvento (
    artigo_matricula INT,
    evento_codigo INT,
    PRIMARY KEY (artigo_matricula, evento_codigo),
    FOREIGN KEY (artigo_matricula) REFERENCES Artigo(matricula),
    FOREIGN KEY (evento_codigo) REFERENCES Evento(codigo)
);

INSERT INTO ArtigoPublicadoEmEvento (artigo_matricula, evento_codigo) VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 5),
    (6, 6),
    (7, 7),
    (8, 8),
    (9, 9),
    (10, 10),
    (11, 1),
    (12, 2),
    (13, 3),
    (14, 4),
    (15, 5),
    (16, 6),
    (17, 7),
    (18, 8),
    (19, 9),
    (20, 10),
    (21, 1),
    (22, 2),
    (23, 3),
    (24, 4),
    (25, 5),
    (26, 6),
    (27, 7),
    (28, 8),
    (29, 9),
    (30, 10);
