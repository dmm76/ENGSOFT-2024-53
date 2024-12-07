#Criacao de Schema e Tabelas
CREATE SCHEMA if not exists biblioteca;
USE biblioteca;
#Drop Schema biblioteca

#Autor (id_autor, nacionalidade, nome)
#DROP TABLE Autor
CREATE TABLE if not exists Autor(
	id_autor INT AUTO_INCREMENT, 
	nome VARCHAR(30) NOT NULL,
    nacionalidade VARCHAR(45) NOT NULL,
	PRIMARY KEY(id_autor)
);

#Editora (id_editora, cnpj, nome, cidade)
#DROP TABLE Editora
CREATE TABLE if not exists Editora(
	id_editora INT AUTO_INCREMENT, 
    cnpj VARCHAR(30) NOT NULL,
	nome VARCHAR(30) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
	PRIMARY KEY(id_editora)
);

#Categoria (id_categoria, nome, descricao)
#DROP TABLE Categoria
CREATE TABLE if not exists Categoria(
	id_categoria INT AUTO_INCREMENT, 
   	nome VARCHAR(30) NOT NULL,
    descricao VARCHAR(150) NOT NULL,
	PRIMARY KEY(id_categoria)
);

#Livro (id_livro, isbn, titulo, ano_publicacao, editora_id, categoria_id)
#DROP TABLE Livro
CREATE TABLE if not exists Livro(
	id_livro INT AUTO_INCREMENT,
	isbn INT NOT NULL,
    titulo VARCHAR(50) NOT NULL,
	ano_publicacao YEAR NOT NULL,
    editora_id INT NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY(id_livro),
    FOREIGN KEY(editora_id) REFERENCES Editora(id_editora) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(categoria_id) REFERENCES Categoria(id_categoria) ON DELETE CASCADE ON UPDATE CASCADE
);

#Publicacao (autor_id, livro_id)
#DROP TABLE Publicacao
CREATE TABLE if not exists Publicacao(
	autor_id INT,
	livro_id INT,
    PRIMARY KEY(autor_id, livro_id),
    FOREIGN KEY(autor_id) REFERENCES autor(id_autor) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(livro_id) REFERENCES livro(id_livro) ON DELETE CASCADE ON UPDATE CASCADE
);

#Membro (id_membro, nome, email)
#DROP TABLE Membro
CREATE TABLE if not exists Membro(
	id_membro INT AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY(id_membro)
);

#Emprestimo (id_emprestimo, membro_id, livro_id, data_emprestimo, data_devolucao)
#DROP TABLE Emprestimo
CREATE TABLE if not exists Emprestimo(
	id_emprestimo INT AUTO_INCREMENT,
    membro_id INT NOT NULL,
    livro_id INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NOT NULL,
    PRIMARY KEY (Id_emprestimo),
    FOREIGN KEY(livro_id) REFERENCES livro(id_livro) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY(membro_id) REFERENCES Membro(id_membro) ON DELETE CASCADE ON UPDATE CASCADE
);

#Endereco (id_endereco, membro_id,rua, cep, numero, complemento).
#DROP TABLE Endereco
CREATE TABLE if not exists Endereco(
	id_endereco INT AUTO_INCREMENT, 
	membro_id INT NOT NULL,
   	rua VARCHAR(30) NOT NULL,
    cep VARCHAR(30) NOT NULL,
    numero INT NOT NULL,
    complemento VARCHAR(45) NOT NULL,
	PRIMARY KEY(id_endereco),
    FOREIGN KEY(membro_id) REFERENCES membro(id_membro) ON DELETE CASCADE ON UPDATE CASCADE
);

#Telefone (id_telefone, membro_id,numero, tipo)
#DROP TABLE Telefone
CREATE TABLE if not exists Telefone(
	id_telefone INT AUTO_INCREMENT, 
    membro_id INT NOT NULL,
   	numero VARCHAR(20) NOT NULL,
    tipo VARCHAR(15) NOT NULL,
	PRIMARY KEY(id_telefone),
    FOREIGN KEY(membro_id) REFERENCES membro(id_membro) ON DELETE CASCADE ON UPDATE CASCADE
);