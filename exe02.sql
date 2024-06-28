-- Criação do banco de dados e das tabelas
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- Tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Tabela tb_pizzas
CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserir registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas tradicionais com recheios salgados'),
('Doce', 'Pizzas com recheios doces'),
('Vegetariana', 'Pizzas sem carne, apenas com ingredientes vegetarianos'),
('Especial', 'Pizzas especiais do chef'),
('Vegana', 'Pizzas sem ingredientes de origem animal');

-- Inserir registros na tabela tb_pizzas
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES
('Calabresa', 'Mussarela, calabresa fatiada, cebola e orégano', 42.90, 1),
('Quatro Queijos', 'Mussarela, parmesão, provolone e gorgonzola', 49.90, 1),
('Chocolate com Morango', 'Chocolate, morangos frescos e açúcar de confeiteiro', 55.00, 2),
('Margherita', 'Molho de tomate, mussarela de búfala, tomate e manjericão fresco', 48.50, 1),
('Vegetariana Especial', 'Molho de tomate, mussarela, abobrinha, berinjela, pimentão e cebola', 46.00, 3),
('Frango com Catupiry', 'Mussarela, frango desfiado, catupiry e milho verde', 47.50, 1),
('Portuguesa', 'Molho de tomate, mussarela, presunto, ovos, cebola e azeitonas', 44.00, 1),
('Margarita', 'Mussarela, tomate, manjericão e azeite de oliva', 43.00, 1);

-- Consulta 1: Pizzas cujo valor seja maior do que R$ 45,00
SELECT *
FROM tb_pizzas
WHERE preco > 45.00;

-- Consulta 2: Pizzas cujo valor esteja no intervalo entre R$ 50,00 e R$ 100,00
SELECT *
FROM tb_pizzas
WHERE preco BETWEEN 50.00 AND 100.00;

-- Consulta 3: Pizzas que possuam a letra M no nome
SELECT *
FROM tb_pizzas
WHERE nome LIKE '%M%';

-- Consulta 4: INNER JOIN entre tb_pizzas e tb_categorias
SELECT p.*, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id;

-- Consulta 5: INNER JOIN com filtro por categoria específica
SELECT p.*, c.nome AS categoria
FROM tb_pizzas p
INNER JOIN tb_categorias c ON p.id_categoria = c.id
WHERE c.nome = 'Doce';
