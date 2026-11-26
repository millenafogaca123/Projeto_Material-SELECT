-- apaga o banco se já existir e cria de novo
DROP DATABASE IF EXISTS pizzaria_select;
CREATE DATABASE pizzaria_select;
-- escolhe o banco para usar
USE pizzaria_select;

CREATE TABLE cliente (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  telefone VARCHAR(20)
);

CREATE TABLE pizza (
  id INT PRIMARY KEY AUTO_INCREMENT,
  sabor VARCHAR(50) NOT NULL,
  tamanho VARCHAR(10),
  preco DECIMAL(6,2)
);

CREATE TABLE pedido (
  id INT PRIMARY KEY AUTO_INCREMENT,
  data_hora DATETIME,
  valor_total DECIMAL(8,2)
);

-- o id não vai: o MySQL cria sozinho
INSERT INTO cliente (nome, telefone) VALUES
  ('Ana Souza', '71911112222'),
  ('Bruno Lima', '71922223333'),
  ('Carla Dias', '71933334444'),
  ('Marta Reis', '71955556666'),
  ('Marcos Paz', '71966667777'),
  ('Paula Rocha', '71977778888');
  
INSERT INTO pizza (sabor, tamanho, preco) VALUES
  ('Calabresa', 'Grande', 52.00),
  ('Calabresa', 'Pequena', 32.00),
  ('Frango com catupiry', 'Grande', 58.00),
  ('Mussarela', 'Grande', 48.00),
  ('Mussarela', 'Pequena', 29.00),
  ('Portuguesa', 'Grande', 62.00),
  ('Quatro queijos', 'Grande', 66.00),
  ('Chocolate', 'Pequena', 34.00);
  
INSERT INTO pedido (data_hora, valor_total) VALUES
  ('2026-11-14 19:10:00', 58.00),
  ('2026-11-14 20:05:00', 112.50),
  ('2026-11-15 12:30:00', 48.00),
  ('2026-11-16 21:00:00', 134.90),
  ('2026-11-17 19:00:00', 74.00),
  ('2026-11-18 20:30:00', 52.00),
  ('2026-11-19 19:40:00', 120.00),
  ('2026-11-21 21:15:00', 104.00);
  
SELECT * FROM cliente;
SELECT * FROM pizza;
SELECT * FROM pedido;

-- 2
SELECT nome, telefone FROM cliente;

-- 3
SELECT * FROM pizza WHERE tamanho = 'Grande';

-- 4 
SELECT * FROM pizza WHERE preco > 50;

-- 7 
SELECT * FROM clientes WHERE nome LIKE 'M%';

--  8
SELECT * FROM pizza ORDER BY preco ASC;









