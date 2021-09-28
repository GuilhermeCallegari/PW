# ALTER USER 'root'@'localhost' IDENTIFIED BY 'root'; #

DROP DATABASE IF EXISTS conexao;
CREATE DATABASE conexao;
USE conexao;

# DROP TABLE IF EXISTS endereco_cli; 
CREATE TABLE endereco_cli(
	ID_end_cli int PRIMARY KEY AUTO_INCREMENT,
	Logradouro text NOT NULL,
	Cidade text NOT NULL,
    Uf text NOT NULL,
    Numero int NOT NULL
	);

# DROP TABLE IF EXISTS endereco_func;
CREATE TABLE endereco_func(
	ID_end_func int PRIMARY KEY AUTO_INCREMENT,
	Logradouro_func text NOT NULL,
	Cidade_func text NOT NULL,
    Uf_func text NOT NULL,
    Numero_func int NOT NULL
	);

# DROP TABLE IF EXISTS cliente;
CREATE TABLE cliente(
	ID_cli int PRIMARY KEY AUTO_INCREMENT,
	Cpf varchar(15) UNIQUE NOT NULL,
    Nome text NOT NULL,
    Telefone varchar(20) NOT NULL
	# ID_end_cli int NOT NULL, #
	# foreign key (ID_end_cli) REFERENCES endereco_cli(ID_end_cli)#
    );
    
# DROP TABLE IF EXISTS funcionario;
CREATE TABLE funcionario(
	ID_func int PRIMARY KEY AUTO_INCREMENT,
	Cpf_func varchar(15) UNIQUE NOT NULL,
    Nome_func text NOT NULL,
    Telefone_func varchar(20) NOT NULL
    # ID_end_func int not null,#
	# foreign key (ID_end_func) references endereco_func(ID_end_func)#
    );
    
# DROP TABLE IF EXISTS produto;
CREATE TABLE produto(
	ID_prod int PRIMARY KEY AUTO_INCREMENT,
    Nome_prod text NOT NULL,
    Quantidade int NOT NULL,
    Valor decimal NOT NULL
    );

select * from cliente;
select * from funcionario;
select * from produto;
select * from endereco_cli;
select * from endereco_func;
