-- SQL SERVER
-- Projeto de Modelagem de Bando de Dados

-- Criando a tabela Cliente
CREATE TABLE Cliente (
	CNH VARCHAR(100) NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Cartao INT NOT NULL,
	Telefone VARCHAR(100) NOT NULL,
	PRIMARY KEY(CNH)
);

-- Adicionando dados na tabela Cliente
INSERT INTO Cliente(CNH, Nome, Cartao, Telefone)
VALUES ('111111', 'Andr�', '123456', '99999-9999');
INSERT INTO Cliente(CNH, Nome, Cartao, Telefone)
VALUES ('222222', 'Bruna', '654321', '88888-88888');
INSERT INTO Cliente(CNH, Nome, Cartao, Telefone)
VALUES ('333333', 'Caio', '765432', '77777-7777');

--- Criando a Tabela Agencia
CREATE TABLE Agencia(
	NumAg INT NOT NULL,
	Rua VARCHAR(100) NOT NULL,
	Cidade VARCHAR(100) NOT NULL,
	Estado VARCHAR(100) NOT NULL,
	Contato VARCHAR(100) NOT NULL,
	PRIMARY KEY(NumAg)
);

-- Adicionando dados na tabela Agencia
INSERT INTO Agencia(NumAg, Rua, Cidade, Estado, Contato)
VALUES ('1', 'Dias Coelho', 'Rio de Janeiro', 'RJ', '2222-2222');
INSERT INTO Agencia(NumAg, Rua, Cidade, Estado, Contato)
VALUES ('2', 'Alfredo Bittencourt', 'S�o Paulo', 'SP', '3333-3333');

-- Criando a tabela Carro
CREATE TABLE Carro(
	Placa VARCHAR(100) NOT NULL,
	Modelo VARCHAR(100) NOT NULL,
	Ano INT NOT NULL,
	NumAg INT NOT NULL,
	PRIMARY KEY(Placa),
	FOREIGN KEY(NumAg) REFERENCES Agencia(NumAg)
);

-- Adicionando dados a tabela Carro
INSERT INTO Carro(Placa, Modelo, Ano, NumAg)
VALUES ('ABC-123', 'Honda Civic', '2019', 1);
INSERT INTO Carro(Placa, Modelo, Ano, NumAg)
VALUES ('DDE-890', 'Chevrolet Onix', '2021', 1);
INSERT INTO Carro(Placa, Modelo, Ano, NumAg)
VALUES ('FGI-314', 'Fiat Cronos', '2020', 2);

-- Criando a tabela Aluguel
	CREATE TABLE Aluguel(
	Data DATE NOT NULL,
	CNH VARCHAR(100) NOT NULL,
	Placa VARCHAR(100) NOT NULL,
	PRIMARY KEY(CNH, Placa),
	FOREIGN KEY(CNH) REFERENCES Cliente(CNH),
	FOREIGN KEY(Placa) REFERENCES Carro(Placa)
);

-- Adicionando dados na tabela Aluguel
INSERT INTO Aluguel(DATA, CNH, Placa)
VALUES ('10/01/2023', '111111', 'DDE-890');
INSERT INTO Aluguel(DATA, CNH, Placa)
VALUES ('11/01/2023', '222222', 'FGI-314');
INSERT INTO Aluguel(DATA, CNH, Placa)
VALUES ('11/01/2023', '333333', 'ABC-123');

SELECT * FROM Cliente;
SELECT * FROM Agencia;
SELECT * FROM Carro;
SELECT * FROM Aluguel;
