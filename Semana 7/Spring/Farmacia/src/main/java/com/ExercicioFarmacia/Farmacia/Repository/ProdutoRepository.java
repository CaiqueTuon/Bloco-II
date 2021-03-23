package com.ExercicioFarmacia.Farmacia.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ExercicioFarmacia.Farmacia.Model.Produto;

	 public interface ProdutoRepository extends JpaRepository<Produto,Long> {
		public List<Produto> findAllByNomeContainingIgnoreCase(String nome);
}

