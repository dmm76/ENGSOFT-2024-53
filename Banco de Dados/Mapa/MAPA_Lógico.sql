/* MAPA_L�gico: */

CREATE TABLE Livro (
    id_livro INTEGER PRIMARY KEY,
    isbn INTEGER,
    titulo VARCHAR,
    ano_publicacao INTEGER,
    editora_id INTEGER,
    categoria_id INTEGER
);

CREATE TABLE Autor (
    id_autor INTEGER PRIMARY KEY,
    nacionalidade VARCHAR,
    nome VARCHAR
);

CREATE TABLE Editora (
    id_editora INTEGER PRIMARY KEY,
    cnpj VARCHAR UNIQUE,
    nome VARCHAR,
    cidade VARCHAR
);

CREATE TABLE Categoria (
    id_categoria INTEGER PRIMARY KEY,
    nome VARCHAR,
    descricao VARCHAR
);

CREATE TABLE Empr�stimo (
    id_emprestimo INTEGER PRIMARY KEY,
    data_emprestimo DATE,
    data_devolu��o DATE,
    livro_id INTEGER,
    membro_id INTEGER
);

CREATE TABLE Membro (
    id_membro INTEGER PRIMARY KEY,
    nome VARCHAR,
    email VARCHAR UNIQUE
);

CREATE TABLE Publicacao (
    autor_id INTEGER,
    livro_id INTEGER,
    PRIMARY KEY (autor_id, livro_id)
);

CREATE TABLE Endere�o (
    id_Endere�o INTEGER PRIMARY KEY,
    rua VARCHAR,
    cep VARCHAR,
    numero INTEGER,
    complemento VARCHAR,
    membro_id INTEGER
);

CREATE TABLE Telefone (
    id_telefone INTEGER PRIMARY KEY,
    numero VARCHAR,
    tipo VARCHAR,
    membro_id INTEGER
);
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_2
    FOREIGN KEY (ano_publicacao)
    REFERENCES Editora (id_editora);
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_3
    FOREIGN KEY (editora_id)
    REFERENCES Categoria (id_categoria);
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_4
    FOREIGN KEY (categoria_id???)
    REFERENCES ??? (???);
 
ALTER TABLE Empr�stimo ADD CONSTRAINT FK_Empr�stimo_2
    FOREIGN KEY (livro_id)
    REFERENCES Livro (id_livro);
 
ALTER TABLE Empr�stimo ADD CONSTRAINT FK_Empr�stimo_3
    FOREIGN KEY (membro_id)
    REFERENCES Membro (id_membro);
 
ALTER TABLE Publicacao ADD CONSTRAINT FK_Publicacao_1
    FOREIGN KEY (livro_id)
    REFERENCES Livro (id_livro);
 
ALTER TABLE Publicacao ADD CONSTRAINT FK_Publicacao_3
    FOREIGN KEY (autor_id)
    REFERENCES Autor (id_autor);
 
ALTER TABLE Endere�o ADD CONSTRAINT FK_Endere�o_2
    FOREIGN KEY (membro_id)
    REFERENCES Membro (id_membro);
 
ALTER TABLE Telefone ADD CONSTRAINT FK_Telefone_2
    FOREIGN KEY (membro_id)
    REFERENCES Membro (id_membro);