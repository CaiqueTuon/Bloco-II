package com.lojadegames.jogos.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lojadegames.jogos.model.Categoria;



public interface CategoriaRepository extends JpaRepository<Categoria,Long> {
	public List<Categoria> findAllByNomeContainingIgnoreCase(String nome);
	public List<Categoria> findByid(Long id);
	
}


