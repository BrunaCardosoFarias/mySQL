-- Criar o banco de dados db_curso_da_minha_vida
CREATE DATABASE db_curso_da_minha_vida;

-- Usar o banco de dados criado
USE db_curso_da_minha_vida;

-- Tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Tabela tb_cursos
CREATE TABLE tb_cursos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserir registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
('Programação', 'Cursos de programação em diversas linguagens'),
('Design Gráfico', 'Cursos de design e criação visual'),
('Marketing Digital', 'Cursos de marketing online e estratégias digitais'),
('Idiomas', 'Cursos de idiomas para diversas necessidades'),
('Desenvolvimento Pessoal', 'Cursos para desenvolvimento pessoal e profissional');

-- Inserir registros na tabela tb_cursos
INSERT INTO tb_cursos (nome, descricao, preco, id_categoria) VALUES
('Curso de Python Avançado', 'Aprenda Python do básico ao avançado', 800.00, 1),
('Curso de Photoshop Profissional', 'Domine as técnicas avançadas do Photoshop', 950.00, 2),
('Curso de Marketing Digital Completo', 'Estratégias completas para marketing online', 700.00, 3),
('Curso de Inglês Intermediário', 'Melhore suas habilidades de conversação', 600.00, 4),
('Curso de Programação Web', 'Desenvolvimento web com HTML, CSS e JavaScript', 1200.00, 1),
('Curso de Illustrator Básico', 'Introdução ao Illustrator para iniciantes', 500.00, 2),
('Curso de Gestão de Projetos', 'Fundamentos da gestão de projetos', 850.00, 5),
('Curso de Java para Iniciantes', 'Aprenda Java do zero', 550.00, 1);

-- Consulta 1: Cursos cujo valor seja maior do que R$ 500,00
SELECT *
FROM tb_cursos
WHERE preco > 500.00;

-- Consulta 2: Cursos cujo valor esteja no intervalo entre R$ 600,00 e R$ 1000,00
SELECT *
FROM tb_cursos
WHERE preco BETWEEN 600.00 AND 1000.00;

-- Consulta 3: Cursos que possuam a letra J no nome
SELECT *
FROM tb_cursos
WHERE nome LIKE '%J%';

-- Consulta 4: INNER JOIN entre tb_cursos e tb_categorias
SELECT c.*, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id;

-- Consulta 5: INNER JOIN com filtro por categoria específica
SELECT c.*, cat.nome AS categoria
FROM tb_cursos c
INNER JOIN tb_categorias cat ON c.id_categoria = cat.id
WHERE cat.nome = 'Java';
