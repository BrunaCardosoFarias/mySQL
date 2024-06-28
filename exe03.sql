-- Criação do banco de dados e das tabelas
CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

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
('Medicamentos', 'Produtos farmacêuticos para tratamento de doenças'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele e cabelo'),
('Higiene Pessoal', 'Produtos para higiene diária'),
('Dietéticos', 'Produtos dietéticos e suplementos alimentares'),
('Maternidade', 'Produtos para gestantes e recém-nascidos');

-- Inserir registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES
('Paracetamol 500mg', 'Analgésico e antitérmico', 12.50, 1),
('Shampoo Anticaspa', 'Shampoo para controle da caspa', 19.90, 2),
('Protetor Solar FPS 50', 'Protetor solar para peles sensíveis', 45.00, 2),
('Escova Dental Infantil', 'Escova dental infantil com desenhos divertidos', 5.99, 3),
('Suplemento de Vitamina C', 'Suplemento vitamínico para reforço imunológico', 30.00, 4),
('Creme Hidratante Facial', 'Hidratante facial para peles secas', 55.00, 2),
('Álcool em Gel 70%', 'Antisséptico para as mãos', 8.50, 3),
('Pomada para Assaduras', 'Pomada para prevenção e tratamento de assaduras', 15.75, 5);

-- Consulta 1: Produtos cujo valor seja maior do que R$ 50,00
SELECT *
FROM tb_produtos
WHERE preco > 50.00;

-- Consulta 2: Produtos cujo valor esteja no intervalo entre R$ 5,00 e R$ 60,00
SELECT *
FROM tb_produtos
WHERE preco BETWEEN 5.00 AND 60.00;

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
WHERE c.nome = 'Cosméticos';
