/* MAPA_Lógico: */

CREATE TABLE Livro (
    isbn INTEGER PRIMARY KEY,
    titulo VARCHAR,
    ano_publicacao YEAR,
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

CREATE TABLE Empréstimo (
    id_emprestimo INTEGER PRIMARY KEY,
    data_emprestimo DATE,
    data_devolução DATE,
    livro_isbn INTEGER,
    membro_id INTEGER
);

CREATE TABLE Membro (
    id_membro INTEGER PRIMARY KEY,
    nome VARCHAR,
    email VARCHAR UNIQUE
);

CREATE TABLE Publicacao (
    autor_id INTEGER,
    isbn_livro INTEGER,
    PRIMARY KEY (autor_id, isbn_livro)
);

CREATE TABLE Endereço (
    id_Endereço INTEGER PRIMARY KEY,
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
    FOREIGN KEY (editora_id)
    REFERENCES Editora (id_editora);
 
ALTER TABLE Livro ADD CONSTRAINT FK_Livro_3
    FOREIGN KEY (categoria_id)
    REFERENCES Categoria (id_categoria);
 
ALTER TABLE Empréstimo ADD CONSTRAINT FK_Empréstimo_2
    FOREIGN KEY (livro_isbn)
    REFERENCES Livro (isbn);
 
ALTER TABLE Empréstimo ADD CONSTRAINT FK_Empréstimo_3
    FOREIGN KEY (membro_id)
    REFERENCES Membro (id_membro);
 
ALTER TABLE Publicacao ADD CONSTRAINT FK_Publicacao_1
    FOREIGN KEY (isbn_livro)
    REFERENCES Livro (isbn);
 
ALTER TABLE Publicacao ADD CONSTRAINT FK_Publicacao_3
    FOREIGN KEY (autor_id)
    REFERENCES Autor (id_autor);
 
ALTER TABLE Endereço ADD CONSTRAINT FK_Endereço_2
    FOREIGN KEY (membro_id)
    REFERENCES Membro (id_membro);
 
ALTER TABLE Telefone ADD CONSTRAINT FK_Telefone_2
    FOREIGN KEY (membro_id)
    REFERENCES Membro (id_membro);