CREATE DATABASE biblioteca;
USE biblioteca;

CREATE TABLE Livro (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    TituloLivro VARCHAR(50) NOT NULL,
    ISBN INT,
    Descricao TEXT
    );
    
CREATE TABLE LivroAutor (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    IdLivro INT,
    IdAutor INT,
    FOREIGN KEY (LivroID) REFERENCES Livro(ID)
    );
    
CREATE TABLE Autor (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50),
    DataNascimento DATE,
    Biografia TEXT
    );
    
CREATE LivroCategoria (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    IdLivro INT,
    IdCategoria INT,
    FOREIGN KEY (LivroID) REFERENCES Livro(ID)
    );
