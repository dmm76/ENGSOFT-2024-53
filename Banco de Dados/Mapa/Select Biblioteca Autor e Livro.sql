USE biblioteca;
select livro.Titulo, autor.Nome AS Autor, categoria.Nome AS Categoria, editora.Nome as Editora
FROM livro JOIN publicacao
on id_livro = livro_id
JOIN autor on Autor_id = Id_autor
JOIN editora on Id_editora = Editora_id
JOIN categoria ON Id_categoria = Categoria_id
where editora.id_editora = 2;