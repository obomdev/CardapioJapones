-- Cria o banco de dados
CREATE DATABASE cardapiojapones;

-- Usa o banco de dados criado
USE cardapiojapones;

-- Cria a tabela categoria
CREATE TABLE categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL
);

-- Cria a tabela prato
CREATE TABLE prato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

-- Insere categorias
INSERT INTO categoria (nome) VALUES ('Quente'), ('Frio');

-- Insere pratos
INSERT INTO prato (nome, descricao, categoria_id) VALUES 
('Sashimi', 'Fatias finas de peixe cru', 1),
('Nigiri', 'Bolinhas de arroz cobertas com peixe', 1),
('Maki', 'Rolinhos de arroz e peixe envoltos em alga', 1),
('Udon', 'Macarrão grosso em caldo quente', 2),
('Tonkotsu Ramen', 'Ramen com caldo de porco', 2),
('Tempura de Camarão', 'Camarões fritos em massa leve', 3),
('Tempura de Legumes', 'Legumes fritos em massa leve', 3),
('Katsu Don', 'Tigela de arroz com costeleta de porco empanada', 2);
