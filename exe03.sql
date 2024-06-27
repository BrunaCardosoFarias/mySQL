-- Criação do banco de dados
CREATE DATABASE escola;

-- Seleção do banco de dados
USE escola;

-- Criação da tabela de estudantes
CREATE TABLE tb_estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    curso VARCHAR(100),
    nota FLOAT,
    email VARCHAR(255)
);

-- Inserção de dados na tabela de estudantes
INSERT INTO tb_estudantes (nome, idade, curso, nota, email)
VALUES
    ('Maria Silva', 20, 'Engenharia Civil', 8.5, 'maria.silva@example.com'),
    ('João Oliveira', 22, 'Administração', 7.2, 'joao.oliveira@example.com'),
    ('Pedro Santos', 19, 'Medicina', 9.0, 'pedro.santos@example.com'),
    ('Ana Souza', 21, 'Direito', 6.8, 'ana.souza@example.com'),
    ('Luiza Costa', 20, 'Psicologia', 8.9, 'luiza.costa@example.com'),
    ('Marcos Lima', 23, 'Economia', 7.5, 'marcos.lima@example.com'),
    ('Carla Fernandes', 18, 'Ciências da Computação', 8.2, 'carla.fernandes@example.com'),
    ('Lucas Pereira', 19, 'Arquitetura', 6.5, 'lucas.pereira@example.com');

-- SELECT para estudantes com nota maior que 7.0
SELECT *
FROM tb_estudantes
WHERE nota > 7.0;

-- SELECT para estudantes com nota menor ou igual a 7.0
SELECT *
FROM tb_estudantes
WHERE nota <= 7.0;

-- Atualização de um registro na tabela de estudantes
UPDATE tb_estudantes
SET nota = 8.0
WHERE id = 4;
