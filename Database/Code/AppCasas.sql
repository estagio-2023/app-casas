CREATE TABLE tipologia
(id SERIAL  PRIMARY KEY  NOT NULL ,
descricao varchar(50) );

CREATE TABLE comodidades
(id SERIAL  PRIMARY KEY  NOT NULL ,
descricao varchar(50) );

CREATE TABLE cidades
(id SERIAL  PRIMARY KEY  NOT NULL ,
descricao varchar(50) );

CREATE TABLE tipo_imovel
(id SERIAL  PRIMARY KEY  NOT NULL ,
descricao varchar(50) );

INSERT INTO tipo_imovel (descricao) VALUES
	('Garagem'),
	('Quarto'),
	('Moradia'),
	('Apartamento'),
	('Estudio');

INSERT INTO comodidades (descricao) VALUES
	('Lavandaria'),
	('Varanda'),
	('Piscina'),
	('Terraço'),
	('Arrecadação');

INSERT INTO tipologia (descricao) VALUES
	('T0'),
	('T1'),
	('T2'),
	('T3'),
	('T4'),
	('T5');

INSERT INTO cidades (descricao) VALUES
	('Odivelas'),
	('Seixal'),
	('Gondomar'),
	('Terraço'),
	('Valongo'),
	('Vila Nova de Gaia'),
	('Aveiro'),
	('Braga'),
	('Coimbra'),
	('Faro'),
	('Funchal'),
	('Guimarães'),
	('Ponta Delgada'),
	('Póvoa de Varzim'),
	('Setúbal'),
	('Sintra'),
	('Viana do Castelo'),
	('Vila Franca de Xira'),
	('Viseu');

CREATE TABLE vendedor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150),
    telemovel VARCHAR(13),
    email VARCHAR(150) UNIQUE
);

CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    palavra_passe VARCHAR(150) NOT NULL
);

CREATE TABLE pedido_visita (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150),
    email VARCHAR(150) NOT NULL,
    fk_imovel_id INT
);

CREATE TABLE imovel_has_comodidades (
	PRIMARY KEY (fk_imovel_id, fk_comodidades_id),
    fk_imovel_id INT,
    fk_comodidades_id INT    
);

CREATE TABLE imovel (
	imovel_id SERIAL primary key,
	titulo VARCHAR(100) NOT NULL,
	morada VARCHAR(200) NOT NULL,
	c_postal VARCHAR(8) NOT NULL,
	descricao VARCHAR(200),
	ano_construcao DATE NOT NULL,
	preco DECIMAL(8,2) NOT NULL,
	metros_quadrados INT NOT NULL,
	classe_energetica CHAR,
	fk_cliente_id INT,
	fk_vendedor_id INT,
	fk_tipo_imovel_id INT,
	fk_cidades_id INT,
	fk_tipologia_id INT
);

ALTER TABLE Imovel_Has_Comodidades 
	ADD CONSTRAINT fk_imovel_id FOREIGN KEY (fk_imovel_id) REFERENCES imovel(imovel_id),
	ADD CONSTRAINT fk_comodidades_id FOREIGN KEY (fk_comodidades_id) REFERENCES comodidades(id);

ALTER TABLE imovel
ADD CONSTRAINT fk_cliente_id FOREIGN KEY (fk_cliente_id) REFERENCES cliente(id),
ADD CONSTRAINT fk_vendedor_id FOREIGN KEY (fk_vendedor_id) REFERENCES vendedor(id),
ADD CONSTRAINT fk_tipo_imovel_id FOREIGN KEY (fk_tipo_imovel_id) REFERENCES tipo_imovel(id),
ADD CONSTRAINT fk_cidades_id FOREIGN KEY (fk_cidades_id) REFERENCES cidades(id),
ADD CONSTRAINT fk_tipologia_id FOREIGN KEY (fk_tipologia_id) REFERENCES tipologia(id)