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
    imagem  VARCHAR(300),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

-- Insere categorias
INSERT INTO categoria (nome) VALUES ('Quente'), ('Frio');

-- Insere pratos
INSERT INTO prato (nome, descricao, imagem, categoria_id) VALUES 
('Sashimi', 'Fatias finas de peixe cru', '\\img\\sashimi.jpg', 2),
('Nigiri', 'Bolinhas de arroz cobertas com peixe', '\\img\\nigiri.jpg', 1),
('Maki', 'Rolinhos de arroz e peixe envoltos em alga','\\img\\maki.jpg', 2),
('Udon', 'Macarrão grosso em caldo quente', '\\img\\udon.jpg', 1),
('Tonkotsu Ramen', 'Ramen com caldo de porco', '\\img\\ramen.jpg', 1),
('Tempura de Camarão', 'Camarões fritos em massa leve', '\\img\\tempura.jpg', 1),
('Katsu Don', 'Tigela de arroz com costeleta de porco empanada', '\\img\\don.jpg', 1);