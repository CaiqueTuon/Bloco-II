package com.ExercicioFarmacia.Farmacia.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ExercicioFarmacia.Farmacia.Model.Categoria;

public interface CategoriaRepository extends JpaRepository<Categoria,Long> {
	public List<Categoria> findAllByNomeContainingIgnoreCase(String nome);
	
}




	
