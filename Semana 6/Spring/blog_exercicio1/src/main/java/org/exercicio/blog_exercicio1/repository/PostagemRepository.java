package org.exercicio.blog_exercicio1.repository;

import java.util.List;

import org.exercicio.blog_exercicio1.model.Postagem;
import org.springframework.data.jpa.repository.JpaRepository;


public interface PostagemRepository extends JpaRepository<Postagem,Long>{
	public List<Postagem> findAllByTituloContainingIgnoreCase(String titulo);

}
