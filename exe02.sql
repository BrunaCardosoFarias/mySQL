-- Criação do banco de dados
CREATE DATABASE ecommerce;

-- Seleção do banco de dados
USE ecommerce;
-- Criação da tabela de produtos
CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    marca VARCHAR(100)
);

-- Inserção de dados na tabela de produtos
INSERT INTO tb_produtos (nome, descricao, preco, estoque, marca)
VALUES
    ('Smartphone Samsung Galaxy S20', 'Tela AMOLED de 6.2", câmera tripla 64MP, 128GB', 2899.00, 50, 'Samsung'),
    ('Notebook Dell Inspiron 15', 'Processador Intel Core i5, 8GB RAM, SSD 256GB, Tela 15.6"', 3899.00, 30, 'Dell'),
    ('Smart TV LG LED 55"', 'Resolução 4K, Smart TV com webOS 5.0, Inteligência Artificial ThinQ AI', 3599.00, 20, 'LG'),
    ('Console Playstation 5', 'Console de última geração com SSD ultra-rápido, suporte a ray tracing', 4999.00, 10, 'Sony'),
    ('Forno Elétrico Electrolux', 'Capacidade de 80 litros, função grill, 220V', 799.00, 15, 'Electrolux'),
    ('Geladeira Brastemp Inverse', '425 litros, frost free, sistema de controle de temperatura', 4699.00, 12, 'Brastemp'),
    ('Cafeteira Nespresso', 'Modelo Essenza Mini, café expresso em cápsulas', 399.00, 25, 'Nespresso'),
    ('Liquidificador Philips Walita', 'Jarra de vidro, 5 velocidades + função pulsar, 700W', 189.00, 40, 'Philips');
    
-- SELECT para produtos com valor maior que 500
SELECT *
FROM tb_produtos
WHERE preco > 500;
-- SELECT para produtos com valor menor que 500
SELECT *
FROM tb_produtos
WHERE preco < 500;

-- Atualização de um registro na tabela de produtos
UPDATE tb_produtos
SET preco = 2999.00
WHERE id = 1;

