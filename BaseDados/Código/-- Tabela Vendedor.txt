-- Tabela Vendedor
CREATE TABLE vendedor (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150),
    telemovel VARCHAR(13),
    email VARCHAR(150) UNIQUE
);

-- Tabela Cliente
CREATE TABLE cliente (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    palavra_passe VARCHAR(150) NOT NULL
);

-- Tabela Pedido_Visita
CREATE TABLE pedido_visita (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(150),
    email VARCHAR(150) NOT NULL,
    FOREIGN KEY (fk_imovel_id) REFERENCES imovel_comodidades (fk_imovel_id)
);

-- Tabela Imovel_Comodidades
CREATE TABLE imovel_comodidades (
    fk_imovel_id SERIAL,
    fk_comodidades_id SERIAL,
    PRIMARY KEY (id_imovel, id_comodidades)
);
