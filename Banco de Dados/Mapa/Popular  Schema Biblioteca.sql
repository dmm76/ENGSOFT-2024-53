use biblioteca;
INSERT INTO Autor(nome, nacionalidade) VALUES ('Andrew Stuart Tanenbaum', 'estadunidense');
INSERT INTO Autor(nome, nacionalidade) VALUES ('Carlos Alberto Heuser', 'brasileiro');

#Inserir Editoras
INSERT INTO Editora(Cnpj, Nome, Cidade) VALUES ('05.706.618/0001-95','Pearson Education', 'São Paulo');
INSERT INTO Editora(Cnpj, Nome, Cidade) VALUES ('01.043.230/0001-09','Bookman', 'Porto Alegre');

#Inserir Categorias
INSERT INTO Categoria(Nome, Descricao) VALUES ('Banco de Dados', 'Ensino do Projeto de Banco de Dados - Conceitual e Lógico');
INSERT INTO Categoria(Nome, Descricao) VALUES ('Sistemas Operacionais', 'Ensino da Disciplina de Sistemas Operacionais');

#Inserir Membro
INSERT INTO Membro(Nome, Email) VALUES ('Patricia Monquero', 'patricia@monquero.dev.br');
INSERT INTO Membro(Nome, Email) VALUES ('Douglas Marcelo Monquero', 'douglas.monquero@monquero.dev.br');
INSERT INTO Membro(Nome, Email) VALUES ('Christopher J. Date', 'chris.date@person.com.br');

#Inserir Endereço
INSERT INTO Endereco(Rua, Cep, Numero, Complemento, Membro_id) VALUES ('Rua Monsenor Tanaka', '87010-255', 300, 'Bloco 03 - apt 21', 1);
INSERT INTO Endereco(Rua, Cep, Numero, Complemento, Membro_id) VALUES ('Rua dos Ipes', '87020-080', 412, 'Casa', 2);

#Inserir Telefone
INSERT INTO Telefone(Numero, Tipo, Membro_id) VALUES (999013434, 'Celular', 2);
INSERT INTO Telefone(Numero, Tipo, Membro_id) VALUES (30253434, 'Residencial', 2);
INSERT INTO Telefone(Numero, Tipo, Membro_id) VALUES (99823047, 'Celular', 1);
INSERT INTO Telefone(Numero, Tipo, Membro_id) VALUES (448712223118, 'Celular', 3);

#Inserir Livro
INSERT INTO Livro(ISBN, Titulo, Ano_publicacao, Editora_id, Categoria_id) VALUES (00515, 'Sistemas Operacionais Modernos', 2010, 1, 2);
INSERT INTO Livro(ISBN, Titulo, Ano_publicacao, Editora_id, Categoria_id) VALUES (00574, 'Projeto de Banco de Dados', 2010, 2, 1);

#Inserir Emprestimo
INSERT INTO Emprestimo(data_emprestimo, data_devolucao, Livro_id, Membro_id) VALUES ('2024-09-22', '2024-10-07', 1, 1);
INSERT INTO Emprestimo(data_emprestimo, data_devolucao, Livro_id, Membro_id) VALUES ('2024-09-22', '2024-10-07', 2, 1);
INSERT INTO Emprestimo(data_emprestimo, data_devolucao, Livro_id, Membro_id) VALUES ('2024-08-21', '2024-09-15', 1, 2);
INSERT INTO Emprestimo(data_emprestimo, data_devolucao, Livro_id, Membro_id) VALUES ('2024-08-21', '2024-09-15', 2, 2);

#Inserir Publicacao
INSERT INTO publicacao(Autor_id, livro_id) VALUES (1, 1);
INSERT INTO publicacao(Autor_id, livro_id) VALUES (2, 2);
