-- Criação do banco de dados e das tabelas
CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

-- Tabela tb_classes
CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Tabela tb_personagens
CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

-- Inserção de registros na tabela tb_classes
INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Mestre no combate corpo a corpo'),
('Mago', 'Usuário de magias poderosas'),
('Arqueiro', 'Habilidoso com arco e flecha'),
('Cavaleiro', 'Montado em cavalos poderosos'),
('Assassino', 'Especialista em ataques furtivos');

-- Inserção de registros na tabela tb_personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, id_classe) VALUES
('Lancelot', 2500, 1800, 4),
('Gandalf', 1800, 2200, 2),
('Legolas', 2100, 1500, 3),
('Frodo', 1500, 1200, 5),
('Arthur', 2800, 2500, 1),
('Merlin', 2000, 1900, 2),
('Robin Hood', 1900, 1300, 3),
('Aragorn', 2200, 2000, 4);

-- Consulta 1: Personagens cujo poder de ataque seja maior que 2000
SELECT *
FROM tb_personagens
WHERE poder_ataque > 2000;

-- Consulta 2: Personagens cujo poder de defesa esteja entre 1000 e 2000
SELECT *
FROM tb_personagens
WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Consulta 3: Personagens que possuam a letra 'C' no nome
SELECT *
FROM tb_personagens
WHERE nome LIKE '%C%';

-- Consulta 4: INNER JOIN entre tb_personagens e tb_classes
SELECT p.*, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id;

-- Consulta 5: INNER JOIN com filtro por classe específica
SELECT p.*, c.nome AS classe
FROM tb_personagens p
INNER JOIN tb_classes c ON p.id_classe = c.id
WHERE c.nome = 'Arqueiro';
