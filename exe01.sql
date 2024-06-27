-- Criação da tabela tb_colaboradores
CREATE TABLE tb_colaboradores (
  id BIGINT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  formacao VARCHAR(255) NOT NULL,
  idade BIGINT,
  tem_filhos VARCHAR(255) NOT NULL,
  salario DECIMAL(10, 2)
);

-- Inserção de dados na tabela tb_colaboradores
INSERT INTO tb_colaboradores (nome, formacao, idade, tem_filhos, salario)
VALUES 
  ('Bruna Farias', 'Química', 24, 'Não', 2500.00),
  ('João Silva', 'Engenharia Civil', 30, 'Sim', 3000.00),
  ('Mariana Santos', 'Administração', 28, 'Não', 2200.00),
  ('Pedro Oliveira', 'Economia', 26, 'Sim', 1800.00),
  ('Ana Lima', 'Psicologia', 32, 'Sim', 2700.00);

-- Seleção de todos os colaboradores com salário maior que 2000
SELECT *
FROM tb_colaboradores
WHERE salario > 2000;

-- Seleção de todos os colaboradores com salário menor que 2000
SELECT *
FROM tb_colaboradores
WHERE salario < 2000;

-- Atualização do salário do colaborador 'João Silva'
UPDATE tb_colaboradores
SET salario = 7800.00
WHERE nome = 'João Silva';
