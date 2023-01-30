-- Ordens de Serviços
DROP DATABASE IF EXISTS ordens_servico;
CREATE DATABASE ordens_servico;
USE ordens_servico;
CREATE TABLE os(
    id INT NOT NULL AUTO_INCREMENT,
    funcionarios VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    data_abertura date NOT NULL,
    hora_abertura time NOT NULL,
    data_fim DATE,
    hora_fim TIME,
    PRIMARY KEY (id)
);

SHOW TABLES;
DESCRIBE os;

ALTER TABLE os DROP funcionarios;
ALTER TABLE os ADD func_abertura VARCHAR(100) NOT NULL AFTER id;
ALTER TABLE os ADD func_exe VARCHAR(100) NOT NULL AFTER func_abertura;

--Ordens de Serviços 2.0
DROP DATABASE IF EXISTS ordens_servico_2;
CREATE DATABASE ordens_servico_2;
USE ordens_servico_2;

CREATE TABLE funcionarios(
    matricula INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    PRIMARY KEY(matricula)
);
CREATE TABLE os(
    id INT NOT NULL AUTO_INCREMENT,
    func_abertura INT NOT NULL,
    func_exe INT NOT NULL,
    descricao TEXT NOT NULL,
    data_abertura date NOT NULL,
    hora_abertura time NOT NULL,
    data_fim DATE,
    hora_fim TIME,
    PRIMARY KEY (id),
    FOREIGN KEY (func_abertura) REFERENCES funcionarios(matricula),
    FOREIGN KEY (func_exe) REFERENCES funcionarios(matricula)
);
SHOW TABLES;
DESCRIBE funcionarios;