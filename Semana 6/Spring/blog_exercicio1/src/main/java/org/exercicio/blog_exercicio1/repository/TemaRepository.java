package org.exercicio.blog_exercicio1.repository;

import java.util.List;

import org.exercicio.blog_exercicio1.model.Tema;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TemaRepository extends JpaRepository<Tema, Long> {
		public List<Tema> findAllByDescricaoContainingIgnoreCase(String descricao);
}
