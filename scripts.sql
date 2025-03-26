CREATE DATABASE Escola;
USE Escola;

-- Aluno table
CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,  -- PostgreSQL
    -- id_aluno INT PRIMARY KEY AUTO_INCREMENT,           -- MySQL version
    nome_completo VARCHAR(255) NOT NULL,
    data_nascimento DATE NOT NULL,
    id_turma INT,
    nome_responsavel VARCHAR(255) NOT NULL,
    telefone_responsavel VARCHAR(20) NOT NULL,
    email_responsavel VARCHAR(100) NOT NULL,
    informacoes_adicionais TEXT,
    
    CONSTRAINT fk_turma
        FOREIGN KEY (id_turma) 
        REFERENCES Turma(id_turma)
);

-- Turma table
CREATE TABLE Turma (
    id_turma INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,  -- PostgreSQL
    -- id_turma INT PRIMARY KEY AUTO_INCREMENT,            -- MySQL version
    nome_turma VARCHAR(50) NOT NULL,
    id_professor INT,
    horario VARCHAR(100) NOT NULL,
    
    CONSTRAINT fk_professor
        FOREIGN KEY (id_professor) 
        REFERENCES Professor(id_professor)
);

-- Professor table
CREATE TABLE Professor (
    id_professor INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,  -- PostgreSQL
    -- id_professor INT PRIMARY KEY AUTO_INCREMENT,            -- MySQL version
    nome_completo VARCHAR(255) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20) NOT NULL
);