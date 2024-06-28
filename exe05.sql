-- Criar o banco de dados db_construindo_vidas
CREATE DATABASE db_construindo_vidas;

-- Usar o banco de dados criado
USE db_construindo_vidas;

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
('Elétrica', 'Produtos elétricos para construção'),
('Hidráulica', 'Produtos hidráulicos para construção'),
('Ferramentas', 'Ferramentas diversas para construção'),
('Acabamentos', 'Materiais de acabamento como tintas e vernizes'),
('Ferragens', 'Itens de ferragem para construção');

-- Inserir registros na tabela tb_produtos
INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES
('Fio Elétrico 2.5mm', 'Rolo de fio elétrico para instalações', 120.00, 1),
('Chuveiro Elétrico', 'Chuveiro para banho elétrico', 150.00, 1),
('Válvula de Descarga', 'Válvula de descarga para banheiro', 85.00, 2),
('Tinta Acrílica Branca', 'Lata de tinta acrílica para paredes', 70.00, 4),
('Furadeira de Impacto', 'Furadeira elétrica para perfurações', 220.00, 3),
('Parafuso Rosqueável 10cm', 'Pacote com parafusos para construção', 15.00, 5),
('Torneira de Cozinha', 'Torneira de metal cromado para cozinha', 120.00, 2),
('Lâmpada LED 12W', 'Lâmpada de LED econômica e durável', 25.00, 1);

-- Consulta 1: Produtos cujo valor seja maior do que R$ 100,00
SELECT *
FROM tb_produtos
WHERE preco > 100.00;

-- Consulta 2: Produtos cujo valor esteja no intervalo entre R$ 70,00 e R$ 150,00
SELECT *
FROM tb_produtos
WHERE preco BETWEEN 70.00 AND 150.00;

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
WHERE c.nome = 'Hidráulica';
