CREATE DATABASE infraescola;
USE infraescola;

CREATE TABLE Clientes (
    idClientes INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(50) NOT NULL,
    CPF VARCHAR(11) NOT NULL
);

CREATE TABLE Empresa (
    idEmpresa INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nomeEmpresa VARCHAR(45) NOT NULL,
    idClientes INT,
    FOREIGN KEY (idClientes) REFERENCES Clientes(idClientes)
);

CREATE TABLE Denuncia (
    idDenuncia INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titulo VARCHAR(45) NOT NULL,
    texto VARCHAR(100) NOT NULL,
    dataCriacao DATE NOT NULL,
    idcatDenuncia INT,
    idClientes INT,
    idEmpresa INT,
    FOREIGN KEY (idClientes) REFERENCES Clientes(idClientes),
    FOREIGN KEY (idEmpresa) REFERENCES Empresa(idEmpresa)
);

CREATE TABLE Resposta (
    idResposta INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    txt VARCHAR(100) NOT NULL,
    dataCriacao DATE,
    status VARCHAR(7),
    idDenuncia INT,
    FOREIGN KEY (idDenuncia) REFERENCES Denuncia(idDenuncia)
);

CREATE TABLE catDenuncia (
    idcatDenuncia INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45),
    tipoDenuncia VARCHAR(50)
);

CREATE TABLE feedback (
    idFeedback INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    comentario VARCHAR(255) NOT NULL,
    dataCriacao DATE NOT NULL,
    idResposta INT,
    idDenuncia INT,
    FOREIGN KEY (idResposta) REFERENCES Resposta(idResposta),
    FOREIGN KEY (idDenuncia) REFERENCES Denuncia(idDenuncia)
);

SHOW TABLES;

 
	

