CREATE DATABASE concessionaria;
USE concessionaria;

CREATE TABLE veiculo (
	id_veiculo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    placa CHAR(7) NOT NULL UNIQUE,
    chassi CHAR(17) NOT NULL UNIQUE,
    marca VARCHAR(100) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    ano_fabricacao INT NOT NULL,
    cor VARCHAR(50) NOT NULL,
    km_rodados INT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    status_veiculo VARCHAR(50) NOT NULL,
    
    CHECK (ano_fabricacao >= 1886 AND ano_fabricacao <= 2026),
    CHECK (km_rodados >= 0),
    CHECK (preco > 0),
    CHECK (LOWER(status_veiculo) IN ('disponivel', 'vendido', 'reservado', 'em revisao'))
);

CREATE TABLE cliente (
	id_cliente INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefone VARCHAR(15) NOT NULL UNIQUE,
    endereco VARCHAR(200) NOT NULL,
    
    CHECK (data_nascimento <= '2026-12-31')
);

CREATE TABLE cargo (
	id_cargo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_cargo VARCHAR(50) NOT NULL,
    descricao VARCHAR(255),
    salario_base DECIMAL(10,2) NOT NULL,
    
    CHECK (salario_base > 0)    
);

CREATE TABLE contato (
	id_contato INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(50) NOT NULL, 
    valor VARCHAR(150) NOT NULL UNIQUE,
    id_cliente INT NOT NULL,
    
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    CHECK (LOWER(tipo) IN ('telefone', 'email'))
);

CREATE TABLE funcionario (
	id_funcionario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    salario DECIMAL(10,2) NOT NULL,
    data_admissao DATE NOT NULL,
    id_cargo INT NOT NULL,
    
    FOREIGN KEY (id_cargo) REFERENCES cargo(id_cargo),
    CHECK (salario > 0),
    CHECK (data_admissao <= '2026-12-31')
);

CREATE TABLE venda (
	id_venda INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL,
    forma_pagamento VARCHAR(50) NOT NULL,
    id_veiculo INT NOT NULL,
    id_cliente INT NOT NULL,
    id_funcionario INT NOT NULL,
    
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
    
    CHECK (data_venda <= '2026-12-31'),
    CHECK (valor_total > 0),
    CHECK (LOWER(forma_pagamento) IN ('dinheiro', 'financiamento', 'cartao de credito', 'cartao de debito', 'pix'))
);

CREATE TABLE financiamento (
	id_financiamento INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    banco VARCHAR(100) NOT NULL,
    num_parcelas INT NOT NULL,
    taxa_juros DECIMAL(5,2) NOT NULL,
    valor_entrada DECIMAL(10,2) NOT NULL,
    id_venda INT NOT NULL,
   
   FOREIGN KEY (id_venda) REFERENCES venda(id_venda),
   
   CHECK (num_parcelas > 0),
   CHECK (taxa_juros >= 0),
   CHECK (valor_entrada >= 0)
);

CREATE TABLE revisao (
	id_revisao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_revisao DATE NOT NULL,
    descricao VARCHAR(255),
    custo DECIMAL(10,2) NOT NULL,
    id_veiculo INT NOT NULL,
    id_funcionario INT NOT NULL,
    
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
    FOREIGN KEY (id_funcionario) REFERENCES funcionario(id_funcionario),
    
    CHECK (data_revisao <= '2026-12-31'),
    CHECK (custo > 0)
);