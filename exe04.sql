-- Criar o banco de dados db_cidade_das_carnes 
CREATE DATABASE db_cidade_das_carnes;

-- Usar o banco de dados criado
USE db_cidade_das_carnes;

-- Tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Tabela tb_produtos
CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserir registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Carnes', 'Produtos de carne bovina, suína, frango, etc.'),
('Aves', 'Produtos de aves como frango e peru'),
('Frutas', 'Diversas frutas frescas e selecionadas'),
('Verduras', 'Hortaliças frescas e orgânicas'),
('Laticínios', 'Produtos derivados do leite como queijos e iogurtes');

-- Inserir registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES
('Picanha', 'Corte nobre de carne bovina', 89.90, 1),
('Frango Inteiro', 'Frango inteiro para assar', 59.99, 2),
('Maçã Gala', 'Maçãs frescas e crocantes', 4.50, 3),
('Alface Crespa', 'Alface fresca e crocante', 3.99, 4),
('Queijo Minas Frescal', 'Queijo branco tradicional', 12.75, 5),
('Costela de Porco', 'Costela suína para churrasco', 79.00, 1),
('Banana Nanica', 'Bananas maduras e doces', 3.25, 3),
('Iogurte Natural', 'Iogurte cremoso e saudável', 7.50, 5);

-- Consulta 1: Produtos cujo valor seja maior do que R$ 50,00
SELECT *
FROM tb_produtos
WHERE preco > 50.00;

-- Consulta 2: Produtos cujo valor esteja no intervalo entre R$ 50,00 e R$ 150,00
SELECT *
FROM tb_produtos
WHERE preco BETWEEN 50.00 AND 150.00;

-- Consulta 3: Produtos que possuam a letra C no nome
SELECT *
FROM tb_produtos
WHERE nome LIKE '%C%';

-- Consulta 4: INNER JOIN entre tb_produtos e tb_categorias
SELECT p.*, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

-- Consulta 5: INNER JOIN com filtro por categoria específica 
SELECT p.*, c.nome AS categoria
FROM tb_produtos p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome IN ('Aves', 'Frutas');
